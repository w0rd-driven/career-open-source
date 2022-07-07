 # Recruiter Meeting
 
* Time: 
* Recruiter: 

## Preparation

* General
	* [ ] Dive deeper into the links provided to understand the handbook and other places.
	* [ ] I need at least one question but if there's only one it needs to be important. I should ideally have up to 5 but ask 2 to 3.
	* [ ] Have questions and determine if the handbook can answer them, like how equity works or other parts of the total compensation package.
	* [ ] I need a few ice breaker scenarios to show I care about the recruiter as a human being. This is a business transaction but it doesn't have to feel like one.
	* [ ] Determine 1 to 3 stories, especially any cliff note versions, to work through during the meeting. They may never come up at all but the "arrows should be in your quiver just in case" to use a weird analogy.
	* [ ] Be damn sure that anything I say to the recruiter gets **largely repeated to the next person**. I won't be lying but I should keep anything succinct and not deviate very far if I can help it.
	* [ ] Take notes!
* Recruiter
	* [ ] 

## Ice breakers

* Timezone differences
* Pets? Kids?
	* I'm a cat person mostly but I do love dogs. I love how low maintenance cats are and that they naturally avoid you unless they love spending time with you.
* Hobbies?

## Questions

[Star method](https://zety.com/blog/star-method-interview)

Questions split between what is chosen this round versus covered later. They may flow back and forth throughout the total process.

### Chosen

* What does the career path for my role look like?
* What does a typical day look like for the role?
	* Is there a main product everyone works on or an ecosystem of bespoke systems?
	* How does Elixir play into it?
		* I can make assumptions about the integrations page.
		* Elixir doesn't have a super robust package ecosystem. My assumption from barely being involved is there is a lot of "not invented here" or people create APIs over SDKs.
	* Is there other room for other languages other than React/Next/JavaScript?
* What do you enjoy most about working here?
* If you could change anything about the company, what would it be?

### Extra

* What is the culture like in the office?
* What training and growth opportunities exist?
* How is the work life balance?

## Highlights

Highlights that may seem relevant to the discussion like my consultancy experience.

## Concerns

* [x] Salary range
	* $120k - $140k like Fly.io would be huge. I'm honestly worth $140k and I'll prove it.
	* Not mentioned in the job post **is a red flag sadly**.

## Stories

### Work-related

* Sync services / Hubspot Sync
	* I started out writing a generic sync framework that reused an older project to cover synchronization between 2 systems. If the framework could cover both use cases, adding a 3rd or 4th should be trivial.
	* Hubspot sync needed to exist on its own system as it required a resource intensive first run process. A separate system was also easier to debug in the long run.
	* Sync progressed from Command to Queue to (future) Webhooks or quasi-event-driven.
		* Commands run on a cron sequentially
		* Queues are offloaded tasks via Redis, Database, or executed sequentially (sync)
			* Queues require reducing a problem to the lowest unit of work as they default to retry up to 5 times.
			* Packages can introduce backoff or back pressure
		* Webhooks can be extremely granular but require a different way of thinking to sequential push/pull methodologies.
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
* Outsource ecosystem
    * Our CTO has taken the approach pushing significant development to external vendors.
    * Vendors cover the initial implementation and ongoing maintenance burden through retainers.
    * Internal developers cover core API, synchronization between various internal platforms, and code review / quality control.

### Standard

* What challenging situation have you encountered at work, and how did you handle it?
	* Authorize.net didn't follow semantic versioning for what would become a breaking change for us in a very small way. I used what would become a deprecated class type between v1.9.7 and v1.9.8.
		* Pro: Introduced sticking to very specific version numbers instead of ~ or ^ in most cases.
		* Con: Forced to fork the SDK to v1.9.7.1 to cover a later change from api2.domain to api.domain.
		* Pro: Eventually moved to Stripe.
	* Materials debate over SPA versus MPA with coworker.
		* Eventually I won as I demonstrated how we could progressively load data in a fraction of the time the existing full page load took.
* Where do you see yourself in 2 years?
	* I see myself as a somewhat proficient Elixir developer, making significant contributions to the company as well as the open source ecosystem.
	* I'd like to either contribute to Elixir/Dashbit/Phoenix Framework directly or by possibly covering SDK/Gem conversions. For instance, a "blessed" Elixir Stripe SDK would be huge.

# Notes

## Agenda

## Discrepancies
