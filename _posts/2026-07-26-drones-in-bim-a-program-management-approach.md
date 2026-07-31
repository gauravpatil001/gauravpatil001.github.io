---
title: "Drones in BIM: A Program Management Approach"
date: 2026-07-26
description: "A program management framework for aligning drone hardware, software, governance, stakeholders, and benefits across the BIM lifecycle."
---

At one point in my career as a BIM engineer, I had to look beyond building models and, quite literally, look down on the buildings themselves. This need often arises as the scope of work expands from the building scale to the site scale. At that point, drones can become an important component of the BIM technology stack. This article draws on my experience as a BIM engineer working for owner companies in the advanced industrial and data center sectors. It takes inspiration from PMI's *The Standard for Program Management: Fifth Edition* to provide a structured approach.

**Disclaimer:** This article reflects the author's personal views and is provided for general informational purposes only. It does not constitute legal, aviation, surveying, cybersecurity, or procurement advice. Readers should verify current requirements with the relevant authorities and qualified professionals. Product references are illustrative and do not imply endorsement. All examples are hypothetical and do not describe a specific company, project, site, or operating environment.

## Strategic Alignment and Benefits Management

From an owner's perspective, BIM engineers should approach drones as a program. First, a program creates benefits that deliver value aligned with business objectives. For instance, capturing an aerial image from the same vantage point throughout the construction project lifecycle to track progress is valuable to a company prioritizing efficient construction performance. Second, a program delivers value that is not available when managing projects and operations individually. At the project level, drones should support the construction project from concept to commissioning. They should be closely tied to the site selection and preconstruction stages. Engineering teams will rely on aerial surveys to localize their designs. At the operations level, drones should continue to support facilities requirements after construction ends. The drone data captured throughout the construction lifecycle should act as a repository of information for facilities and future construction projects. Managing project-level and operations-level drone objectives together creates greater value than managing them separately.

A good program should define a list of business objectives against which it seeks to deliver value. Developing this list will help set the nascent drone program up for success.

A typical list of business objectives in the context of a drone program for an owner company would be:

- Efficient engineering designs
- On-budget and on-schedule construction performance
- Better decision-making

The corresponding program benefits would be:

- Localization of generalized basis of design
- Construction progress tracking
- Accessible repository of aerial data

## Program Components and Operating Model

The drone program should be divided into three components:

- Hardware
- Software
- Human Resources

Hardware and software components go hand in hand. The intended benefits should drive their selection. For instance, a program delivering construction progress tracking will require a drone that can follow predefined flight plans and software that can produce comparative data from subsequent flights.

A typical list of hardware requirements for an owner company would include:

- High-resolution cameras
- RTK or PPK or Ground Control Points
- Dock-based drones
- Redundant batteries
- Redundant drones

A typical list of software requirements for an owner company would include:

- Processing platform
- Flight planner
- Cloud collaboration
- Import options
- Export options
- Support across multiple types of drones
- Post-processing capabilities

Once the program is in place and ready to ramp, the availability of certified remote pilots can become a hurdle. In the United States, any drone program must be grounded in safety and legality. The FAA's Part 107 lists the regulations, operating requirements and procedures for safely flying drones. For commercial operations, such as an owner's drone program, the remote pilot must be certified under this rule.

An owner's construction projects may be located at sites across the country. The drone program should adequately support all sites to meet the business objectives. A single remote pilot traveling to each site on a given cadence will not scale and will be cost-prohibitive.

Developing on-site capabilities with in-house certified remote pilots should be the preferred low-cost, high-return and quick-turnaround option. Another viable option is to utilize BVLOS and dock-based drones for remote data capture. When in-house development is not possible, the program should look outward for external support. This is a high-cost, high-return option with turnaround times ranging from quick to slow. It outsources the data-gathering step to an external contractor while keeping processing and post-processing on the same in-house platform. External support can range from an on-site member of the general contractor's or subcontractor's team to an on-demand service from a vendor. An on-demand service may have a slower turnaround due to the remoteness of the site and the requested flight cadence.

The drone program should perform a comparative analysis of each option over time, accounting for typical project schedules and site locations. The goal is to move toward in-house, on-site capabilities as the program ramps.

## Stakeholder Engagement and Collaboration

A drone program should ensure harmony between stakeholder expectations and program benefits. Successful stakeholder management identifies the needs and influence of stakeholders, manages expectations and resolves conflicts, and monitors engagement by evaluating and adjusting strategies as the program evolves. For instance, in the context of a typical drone program, stakeholders may be grouped using a Power-Interest Matrix as follows:

**Low Power, Low Interest: Monitor**

- Local Community
- Software Platform Vendor
- Drone Hardware Vendor
- Other Internal Teams

**High Power, Low Interest: Keep Satisfied**

- Leadership
- FAA

**Low Power, High Interest: Keep Informed**

- Internal Remote Pilots
- External Remote Pilots
- Facilities
- Material Flow
- Logistics
- InfoSec
- Security

**High Power, High Interest: Manage Closely**

- BIM Lead
- Construction Manager
- Design Manager
- Engineering Lead

The Power-Interest Matrix should evolve over time. As the program develops, ramps or transitions from project deliverables to operations deliverables, stakeholder positions may shift on the Power and Interest axes and require different forms of engagement.

Accessibility of data is a good way to cultivate engagement. Stakeholders who can utilize drone data for their own use cases beyond the program benefits will have more interest in the program's success. For instance, a construction manager performing earthwork calculations using construction progress tracking data will be inclined to make a business case for using it on other construction projects.

The ability to request custom drone flights for specific needs can foster stakeholder participation. For instance, a simple request form that allows requesters to select the site and date and provide a justification will enable proactive participation beyond being an end user.

## Program Governance and Risk Management

Governance in program management relates to decision-making and accountability. It prevents individual teams from making isolated decisions that could endanger the wider program. The governance requirements typically include, but are not limited to:

- Aviation Regulations
- Public Safety
- Sensitive Data
- Cybersecurity
- Suppliers
- Technologies
- Public Relations
- Project Delivery

Each drone program should have a program sponsor. They own the strategic alignment and secure organizational support and funding.

The drone program should have a dedicated program manager. They are responsible for integrating the program components (hardware, software and human resources), reviewing and monitoring performance and risks, delegating responsibility, and acting as the last line of defense.

At the site level, the drone program should have dedicated site managers. They are responsible for drone operations on construction projects at that site from concept through commissioning and through operations and facility management as required. They operate within the program-level governance requirements. For instance, if the program follows federal requirements to use only drone hardware manufactured in the United States, the site should conform and avoid restricted suppliers.

An effective governance framework should be established using RACI (Responsible, Accountable, Consulted, and Informed) charts. They help define and clarify how program members relate to program deliverables. For instance, in developing a new flight plan, the remote pilot is responsible, the site manager is accountable, the construction manager and program manager are consulted, and the program sponsor is informed.

Governance enables effective risk management. The drone program faces risks throughout its lifecycle, specifically during and after flights.

Since FAA Part 107 determines the essential safety requirements, the primary risk for any drone program is a violation of them. For a remote pilot, keeping their certification active and staying informed about regulatory updates is crucial. The remote pilot should have a good understanding of their drone's capabilities and limitations.

In the interest of information security, the cloud-based SaaS processing platform must have a security architecture that provides encryption in transit and at rest, SOC 2 Type II and ISO 27001 coverage, annual third-party penetration testing, enterprise SSO, role-based permissions, and downloadable audit logs.

For the drone program, erring on the side of safety and legality is a good risk management approach.

## Program Delivery, Monitoring and Control

A minimum viable product should be a small but complete operational capability. A single drone that follows a predefined flight plan for a site and captures data on a fixed cadence, with the data made accessible to all stakeholders, could be described as an MVP for the drone program.

Program monitoring helps determine the anticipated performance of future flights and informs the ramping and scaling of the drone program. The program benefits should be monitored with the MVP using metrics including, but not limited to:

- Level of detail
- Cadence
- Number of users
- Project milestones
- Cost per flight, internal versus external
- Time per flight, internal versus external
- Time to schedule a flight
- Quality of data
- End user satisfaction
- Battery performance per flight
- Visual Line of Sight per flight plan
- Number of flights per project lifecycle

Program control interacts closely with program monitoring. Measures should be taken to control actual performance against planned performance. For instance, drone data captured at a fixed altitude on a site with a steep slope will not have a consistently good level of detail compared with data captured at a relative altitude matching the slope of the site. Similarly, if a site requires a drone survey at a project milestone, early coordination with the vendor providing the on-demand flight service is required to account for scheduling time. Both monitoring and control should be developed at the program level for wider benefits and at the site level to match benefits to site-specific requirements.

## Applying the Framework: A Hypothetical Example

**Context:** A remote campus with several buildings spread across more than 400 acres of steeply sloped terrain. Active greenfield and brownfield construction projects, including site work, were planned over an 18-month period.

**Business Objective:** Improve construction performance.

**Drone Program Benefit:** Capture construction progress frequently, with a consistent level of detail across the site, within a fixed budget.

**Program Delivery:** The goal was to establish an MVP. The MVP required weekly flights and flights at project milestones, all with the same level of detail and using a relative altitude to compensate for the slope. The data needed to support survey-grade outputs and the development of a 3D site model in mesh or point-cloud format.

Following a market survey, the program team selected DroneDeploy as the cloud SaaS processing platform. Because the program was not subject to federal procurement requirements, the team selected the DJI Matrice 4E. The team had one remote pilot with FAA Part 107 certification. Given the required cadence, it was not feasible for that person to travel to the remote site for every flight. The pilot conducted the initial flight, and subsequent flights relied on DroneDeploy's on-demand flight service to remain within the same software environment.

Based on program monitoring and control, the team appointed a member of the on-site team as the drone program's site manager. This person worked toward certification and used the DJI Matrice 4E for weekly flights. This approach reduced costs and turnaround time compared with relying on external service providers to schedule flights. The flight plan followed a crisscross pattern to capture survey-level data and generate 3D models.

Given the site's remoteness, PPK and Ground Control Points were used instead of RTK. The Ground Control Points were placed in consistent locations, with a minimum of three captured during each flight. The team had six batteries, four of which were required to cover the entire site. The two spare batteries helped compensate for reduced battery performance in adverse weather conditions, such as high winds.

Drone data was backed up on a local hard drive. Processing took approximately 24 hours. Stakeholders received email notifications when the post-processed data was available. User permissions on the cloud platform distinguished between internal and external users and between member and administrator roles.

The 3D models were compared with federated models in Autodesk Forma to evaluate construction performance. In certain cases, the 3D models were incorporated into Revit and Civil 3D for brownfield projects. Once the need for 3D models became apparent, all future flights followed a slower crisscross flight plan instead of the faster S-shaped flight plan to generate data for the 3D models.

## Conclusion

The proposed program framework is not intended to be the final solution. As business objectives evolve, the project mix changes, hardware and software advance, and regulations are updated, the program should adapt accordingly.
