 # Hiring Manager Meeting
 
* Time: 
* Hiring Manager: 

## Preparation

* General
	* [x] Dive deeper into the links provided to understand the handbook and other places.
	* [x] I need at least one question but if there's only one it needs to be important. I should ideally have up to 5 but ask 2 to 3.
	* [x] I need a few ice breaker scenarios to show I care about the hiring manager as a human being. This is a business transaction but it doesn't have to feel like one.
	* [x] Determine 1 to 3 stories, especially any cliff note versions, to work through during the meeting. They may never come up at all but the "arrows should be in your quiver just in case" to use a weird analogy.
	* [x] Be damn sure that anything I say to the recruiter gets **largely repeated to the next person**. I won't be lying but I should keep anything succinct and not deviate very far if I can help it.
	* [x] Take notes!
* Hiring Manager
	* [x] Be prepared to discuss technical concepts with the code and platforms.
	* [x] Find anything mentioning their tech stack if possible. This should be discussed with the hiring manager and the more you know, the better off you look.

## Flags

* Green flag - very compelling hiring practices.
* Green flag - I've heard of them but not really. Surprised they use Elixir tbh.
* Green flag - Professional, enterprise looking website.
* Green flag - Generous benefits.
* Reddish flag - Hiring multiple roles? Why?
* Red flag - Half day interview meetings.
* Red flag - References and background check before the offer is made.

## Ice breakers

* Timezone differences
* Pets? Kids?
	* I'm a cat person mostly but I do love dogs. I love how low maintenance cats are and that they naturally avoid you unless they love spending time with you.
* Hobbies?

## Questions

* [Star method](https://zety.com/blog/star-method-interview)

### Chosen

(Senior Software Engineer, Multiple Roles)

* Can you tell me about the team I’ll be working on?
    * How do they fit into the larger ecosystem at Spreedly?
* Are there cross-functional bespoke systems to manage things like integrations with 3rd party APIs or to cover internal operations like for accounting teams?
* What are the current challenges the team/company is facing?

### Extra

* What’s the onboarding experience like?
* What does the career path for my role look like?
* What does a typical day for an engineer look like at the company?
* What are the habits/work ethic that your ideal candidate might have?
* Does the company have a bonus structure?

## What they do

### Sources

* [Learn the Power of Payment Orchestration | Spreedly](https://www.spreedly.com/features/overview)
* [Payments Orchestration Solutions by Spreedly](https://www.spreedly.com/solutions/the-spreedly-payments-orchestration-platform)
* [Spreedly - Senior Software Engineer, Multiple Roles](https://jobs.lever.co/spreedly/5e9ca976-7791-4dad-ab7f-88a6676e2185?lever-source=LinkedInJobs)

### My interpretation

They aggregate payment processors and gateways. They're PCI and 3DS compliant so think a Stripe in front of Stripe / Braintree / Paypal. They likely cover multiple countries and I would hope, take a lot of the burden out of supporting multiple global payments.

### Hiring manager interpretation

## Ecosystem

### Stack

[Spreedly - Spreedly Tech Stack](https://stackshare.io/spreedly/spreedly)

#### Applications and Data

* Elixir
* Phoenix Framework?
* Erlang
* Ruby
* Rails
* JavaScript
* CoffeeScript
* Java (eww!)
* Cloudflare
* Fastly
* Google Cloud Platform
* Nginx
* More...

#### Utilities

* Google Analytics
* Google Tag Manager
* SendGrid
* Mixpanel
* Mandrill
* Segment
* Hotjar
* Matomo
* Gauges
* More...

#### DevOps

* New Relic
* Varnish

#### Business Tools

* GSuite
* HubSpot
* Zoom

#### Frontend / Mobile

#### Backend

* Elixir with Phoenix

### Company Structure

#### Teams

* List
* Breakdown
* TODO

#### My Team

* Size
* Breakdown
* TODO

#### Work environment

* Cross-pollination among teams where necessary
* Minor issue, resolve yourself. Slack the other team

##### Meeting Structure

* Mandatory: 1v1 direct
* Optional meetings throughout the week

### Product Environment

#### Automation

* Github Actions

#### Application environments

* Develop
* Staging
* Pre-production
* Production

## Stories

### Work-related

* Stripe subscriptions
	* Latest project so I should have more familiarity with this one.
	* This was the best mashup of existing expertise and new frontier as I hadn't been this intimately familiar with how webhooks worked but I was immediately transformed into an evangelist.
	* Invoices have a 1 hour window before they're finalized through 2 webhook events. This has consistently been more than enough time to inject a monthly sku and period into the invoice before it finalizes to the receipt sent to customers.
	* Upon payment success, a complete order is sent to accounting for record keeping purposes.
	* Stripe data is stored locally for redundancy and easier debugging. There have been less than a handful of very minor incidents compared to a seemingly monthly occurrence with the former bespoke system.
* Sage sync reconciliation
    * "Hot off the press" work currently in prototyping stage.
    * Sage sync implemented very quickly yet relatively resilient barring this odd Sage behavior.
    * Not convinced Sage may be writing audit timestamps in the past but it solves a problem while debugging that could be deferred.
    * Reconciling missing shipment numbers by sequence up to a retry threshold as Sage could have a canceled or orphaned identifier.
    * Overkill when compared to "just changing the clock to DST" but it reduces a 4 or 5 hour window for a **low percentage of missing records**.
    * Required for Shopify fulfillment.

### Standard

* What challenging situation have you encountered at work, and how did you handle it?
	* Authorize.net didn't follow semantic versioning for what would become a breaking change for us in a very small way. I used what would become a deprecated class type between v1.9.7 and v1.9.8.
		* Pro: Introduced sticking to very specific version numbers instead of ~ or ^ in most cases.
		* Con: Forced to fork the SDK to v1.9.7.1 to cover a later change from api2.domain to api.domain.
		* Pro: Eventually moved to Stripe.
	* Materials debate over SPA versus MPA with coworker.
		* I demonstrated how we could progressively load data in a fraction of the time the existing full page load took by splitting single page renders to multiple concurrent API calls.
* Where do you see yourself in 2 years?
	* I see myself as a somewhat proficient Elixir developer, making significant contributions to the company as well as the open source ecosystem.

# Notes

## Agenda

### Logistics

Standard questions
* What do you know of Spreedly?
* What has been your most complicated work with multiple data stores.
* What are the pitfalls of distributed systems
* What do I do on my team?
* What makes a senior developer?
* Best thing I bring to my team.

140 people
100 to 130 for 2021
Slight growth opportunities in 2022
The position comes from the need to do more things, no one left the company, etc.

60 in engineering
5 - 6 managers
Teams 2 - 7, around 7 they're split.

Offers with equity

Information about Spreedly
Questions

* What am I looking for?
    * Larger team structure
    * "A rising tide lifts all boats", my team should elevate me as I elevate them.
    * Deeper exposure to Elixir and its ecosystem
* Team breakdown
    * Brand new team so unsure of the expected size

### About me

* Twins - Discussed becoming a father and desire to grow into the Elixir community
* Stripe subscriptions

### Questions

* Can you tell me about the team I’ll be working on?
    * Several positions
    * Core services, several products
    * Mostly backend, some front end
    * Team of 5, 2 open positions.
    * How do they fit into the larger ecosystem at Spreedly?
        * Platform solutions.
* Are there cross-functional bespoke systems to manage things like integrations with 3rd party APIs or to cover internal operations like for accounting teams?
    * Internal customers -> Product team
    * Data team -> reporting
* What are the current challenges the team/company is facing?
    * Core services -> Cross training people is tough. Need multiple SMEs in products.
    * Splitting the team
    * Estimation is a work in progress
    * Things roll over quite a bit
    * External dependencies may not be accounted for
        * Input may move work between sprints
* What are the habits/work ethic that your ideal candidate might have?
    * Positivity
    * Ability to motivate and mentor others
    * Connect without face to face time
* What’s the onboarding experience like?
    * Everyone joins the customer experience team for 6 weeks
    * Asynchronous onboarding
    * Onboarding buddy

### Next steps

* Asynchronous work sample
    * 3 - 7 days to completion
    * Don't pass could be considered for Mid-level
* Zoom interviews
    * Product
    * HR
    * Engineering Manager
    * 2 Spreedly Engineers
