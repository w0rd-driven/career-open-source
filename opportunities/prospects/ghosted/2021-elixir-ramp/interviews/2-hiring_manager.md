 # Hiring Manager Meeting
 
* Time: 
* Hiring Manager: 

## Preparation

* General
	* [ ] Dive deeper into the links provided to understand the handbook and other places.
	* [ ] I need at least one question but if there's only one it needs to be important. I should ideally have up to 5 but ask 2 to 3.
	* [ ] Have questions and determine if the handbook can answer them, like how equity works or other parts of the total compensation package.
	* [ ] I need a few ice breaker scenarios to show I care about the recruiter as a human being. This is a business transaction but it doesn't have to feel like one.
	* [ ] Determine 1 to 3 stories, especially any cliff note versions, to work through during the meeting. They may never come up at all but the "arrows should be in your quiver just in case" to use a weird analogy.
	* [ ] Be damn sure that anything I say to the recruiter gets **largely repeated to the next person**. I won't be lying but I should keep anything succinct and not deviate very far if I can help it.
	* [ ] Take notes!
* Hiring Manager
	* [ ] Be prepared to discuss technical concepts with the code and platforms.
	* [ ] Find anything mentioning their tech stack if possible. This should be discussed with the hiring manager and the more you know, the better off you look.

## What they do


## Ecosystem

* Stack
	* https://remote.com/blog/our-tools
	* https://stackshare.io/remoteengineering/remote-com
	* Applications and Data
		* JavaScript
		* React
		* HTML5
		* PostgreSQL
		* Redis
		* Amazon S3
		* Sass
		* Markdown
		* Elixir
		* Phoenix Framework
	* Utilities
		* Google Analytics
		* Elasticsearch
		* Stripe
		* Gatsby
	* DevOps
		* Git
		* Docker
		* Gitlab
		* Webpack
		* ESLint
		* Babel
		* AWS Fargate*
			* [Moved to Kubernetes](https://remote.com/blog/remote-on-kubernetes)
			* To support the new Kubernetes setup, we use infrastructure-as-code practices and Terraform configurations that give us the power to rebuild Remote’s infrastructure if ever the need should arise. We also rebuilt our Continuous Integration pipelines (GitLab CI) from scratch to deploy our applications to Kubernetes. This allowed us to simplify our workflows, empowering our teams to deploy changes with more speed and fewer complications.
	* Business Tools
		* Slack
		* Zoom
		* Asana
		* [Kanban](https://www.atlassian.com/agile/kanban/kanban-vs-scrum)
			* Jira uses both Kanban and Scrum types but Rethink generally sticks to Scrum practices, requires more control and scope limiting
			* [What is kanban?](https://www.atlassian.com/agile/kanban)
* Frontend monolith
	* React with Typescript
* Backend monolith
	* Elixir with Phoenix
* Company Structure
	* Product teams: 9
		* Different domains
			* Payments
			* Customer onboarding
			* Integrations
	* Team size
		* 1 product manager
		* 1 designer
		* 1 domain expert? Mentioned but I'm not sure if this is separate as my mind didn't capture enough of this sadly.
		* 4-6 engineers + team lead
			* Team lead involved in 70% code tasks
		* QA engineer
	* Work environment
		* Cross-pollination among teams where necessary
		* Minor issue, resolve yourself. Slack the other team
	* Meetings
		* Mandatory: 1v1 direct
		* Optional meetings throughout the week
* Product environment
	* Everything in AWS
	* LogDNA
	* AWS Aurora
		* https://aws.amazon.com/rds/aurora/?aurora-whats-new.sort-by=item.additionalFields.postDateTime&aurora-whats-new.sort-order=desc
	* AWS Managed Postgres
		* https://aws.amazon.com/rds/ ?
	* AWS Managed Redis
		* https://aws.amazon.com/elasticache/redis/fully-managed-redis/ ?
	* Automation
		* Github Actions
		* Gitlab CI
	* Code environments
		* develop
		* staging
		* pre-production
		* production


## Ice breakers

* Timezone differences
* Pets? Kids?
	* I'm a cat person mostly but I do love dogs. I love how low maintenance cats are and that they naturally avoid you unless they love spending time with you.
* Hobbies?

## Questions

* [Star method](https://zety.com/blog/star-method-interview)
* [Recruiter questions](1-recruiter.md#questions)
* [Stories](1-recruiter.md#stories)

1. Kubernetes
	1. Do you use Gitlab's Kubernetes / Environment integrations?
	2. Do you use Prometheus / Grafana?
	3. Are similar DevOps dashboards available to developers or are these concepts handled by a more dedicated SRE? I love this stuff
	4. Answer:
		1. 
2. LogDNA / Sentry, etc.
	1. 
3. What are the ways Elasticsearch is used?
	1. From [Uses of Elasticsearch, and Things to Learn](https://www.elastic.co/blog/found-uses-of-elasticsearch Elasticsearch is used for a lot of different use cases: "classical" full text search, analytics store, auto completer, spell checker, alerting engine, and as a general purpose document store.
	2. Lucene is a stupid fast search engine.
	3. Answer:
		1. 
4. What are the ways Redis is used?
	1. From [Redis: in-memory data store. How it works and why you should use it](https://aws.amazon.com/redis/) Redis is a popular choice for caching, session management, gaming, leaderboards, real-time analytics, geospatial, ride-hailing, chat/messaging, media streaming, and pub/sub apps.
	2. Back-end API caching?
	3. Front-end caching?
	4. Answer:
		1. 
5. Backend APIs.
	1. I can assume Absinthe / GraphQL have been evaluated?
		1. Is there a point where the API scales "tip" to move to leverage this?
6. React/NextJs and TypeScript
	1. The job description is explicitly Senior Backend Engineer but is there room for more Full Stack cross pollination?
		1. I'd be interested in contributing to front-end development.
		2. I enjoy being full stack and look for more front-end opportunities.
		3. I'd love a 60/40 split but realize I'm so entrenched in backend and love the Elixir ecosystem enough to be wholly specialized here.
		4. I'd also love to have more exposure to a production TypeScript application.

# Notes

## Agenda

## Discrepancies
