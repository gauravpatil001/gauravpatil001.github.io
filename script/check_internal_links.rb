# frozen_string_literal: true

require "cgi"
require "pathname"
require "uri"

site_root = Pathname.new(ARGV.fetch(0, "_site")).expand_path
abort "Built site not found at #{site_root}" unless site_root.directory?

html_files = Dir[site_root.join("**", "*.html")].sort
documents = {}
errors = []

load_html = lambda do |path|
  documents[path.to_s] ||= File.read(path)
end

extract_ids = lambda do |path|
  load_html.call(path)
           .scan(/\bid\s*=\s*(["'])(.*?)\1/im)
           .map { |(_quote, id)| CGI.unescapeHTML(id) }
end

html_files.each do |source_name|
  source = Pathname.new(source_name)
  html = load_html.call(source)
  hrefs = html.scan(/<a\b[^>]*\bhref\s*=\s*(["'])(.*?)\1/im)
              .map { |(_quote, href)| CGI.unescapeHTML(href).strip }

  hrefs.each do |href|
    next if href.empty? || href.match?(%r{\A(?:https?:|mailto:|tel:|//)})

    begin
      uri = URI.parse(href)
    rescue URI::InvalidURIError
      errors << "#{source.relative_path_from(site_root)}: invalid URL #{href.inspect}"
      next
    end

    path = URI::DEFAULT_PARSER.unescape(uri.path.to_s)
    candidate =
      if path.empty?
        source
      elsif path.start_with?("/")
        site_root.join(path.delete_prefix("/"))
      else
        source.dirname.join(path)
      end

    candidate = candidate.cleanpath
    targets =
      if candidate.extname.empty? || path.end_with?("/")
        [candidate.join("index.html"), Pathname.new("#{candidate}.html")]
      else
        [candidate]
      end

    target = targets.find(&:file?)
    unless target
      errors << "#{source.relative_path_from(site_root)}: missing target for #{href.inspect}"
      next
    end

    next if uri.fragment.to_s.empty? || target.extname != ".html"

    fragment = URI::DEFAULT_PARSER.unescape(uri.fragment)
    unless extract_ids.call(target).include?(fragment)
      errors << "#{source.relative_path_from(site_root)}: missing ##{fragment} in #{href.inspect}"
    end
  end
end

if errors.empty?
  puts "Checked #{html_files.length} HTML files: all internal links are valid."
else
  warn errors.join("\n")
  abort "Found #{errors.length} broken internal link#{errors.length == 1 ? '' : 's'}."
end
