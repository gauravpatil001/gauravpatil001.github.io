# Model & Method

The source for [Model & Method](https://gauravpatil001.github.io), a
Jekyll-powered blog about BIM, engineering practice, and professional growth.

## Local development

### Prerequisites

- Ruby 3.3 or newer
- Bundler
- A C compiler for native gems (on macOS, run `xcode-select --install`)

Install the dependencies:

```sh
bundle install
```

Start a local preview:

```sh
bundle exec jekyll serve
```

Then open <http://127.0.0.1:4000>.

To run the same build check used in continuous integration:

```sh
bundle exec jekyll build --trace
```

The generated site is written to `_site/`, which is intentionally ignored by
Git.

## Publishing

The site is published from the `main` branch through GitHub Pages. Before
pushing a content or layout change, run the local build and review the
generated pages.
