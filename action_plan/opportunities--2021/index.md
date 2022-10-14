# Job Opportunities

### Table of Contents

* [Workflow](#workflow)
* [Retrospectives](#retrospectives)
* [Sources](#sources)
  * [Elixir](#elixir)
  * [Laravel](#laravel)
  * [NodeJs](#nodejs)
  * [Rejected](#rejected)

## Workflow

1. Create `opportunities-{date}` file, i.e. [opportunities--2022-05-02.md](opportunities--2022-05-02.md). We use this to batch opportunities in a manageable grouping. This can be in any grouping we choose.
    1. The template should be in the form

        ```markdown
        # May 2, 2022
        
        ## Preparation
        
        * [ ] Pick at least 10 companies to apply.
            * [ ] Fly.io: 13
                * [Fly.io](opportunities--2022/elixir-conferences.md#fly.io)
        * Pool
            * [ ] Dockyard: 13
                * [Dockyard](opportunities--2022/elixir-conferences.md#dockyard)
        * [ ] TODO
        * [ ] TODO

        ## Task List
        
        ### Company 1
        
        * [x] Vibe check completed: 11/16/2021
        * [x] Preliminary research completed: 11/16/2021
        * [ ] Green/Red flags completed: 
        * [ ] Job description checklist completed: 
        * [x] Resume completed: 9/3/2021
        * [ ] Cover letter generated: 
        * [ ] Application sent: 
        
        ```

2. Choose 5 to 10 per week to research, storing notes in the files under the [Sources](#sources).
	1. [ElixirConf](elixir-conferences--2022.md) is the main source of truth for most Elixir opportunities, everything should point to it.
	2. This should include vibe check, Fibonacci rating and green/red flags.
	3. Vibe is a pass or fail rating, done initially to gauge pursuing further and can be revoked at any time.
	4. Rating is Fibonacci from -1, 1, 3, 5, 8, to 13 where -1 corresponds to a fail vibe.
	5. Green flags should be positive highlights. Things like a professional, clean website very much count. Your first instinct is rarely wrong, this is seemingly how they also see you.
	6. Heading has `*` for pass, `-` for fail, and `-(*)` for a hybrid where I may reject or pursue a problematic website later.
	7. The source file is somewhat a useful way to aggregate single companies or opportunities but this is prone to human error. An alternative is storing this data in each weekly opportunity file.
3. As research matures with a possible match, generate prospect directories via [generate.sh](../../opportunities/prospects/_templates/generate.sh)
4. Migrate research data into the new file at `(generated directory)/research/index.md`, linking from the source file to the prospect directory index. This should be a 1:1 copy.
	1. ~~I'm on the fence about deleting the original as the initial research, vibe check, or flags may not change over time.~~
	2. Research should move to the prospect file as multiple applications to a single company or job posting can either be duplicated outright or have variations.
	3. Source should link to the weekly file which itself backlinks to the source or the prospect research file.
        ```markdown
        * [Fly.io | Source](opportunities--2021/elixir-conferences.md#fly.io)
        * [Fly.io | Prospect](../opportunities/prospects/applied/2022-elixir-fly-io/research/index.md)
        ```
5. Verify resume doesn't need to change to cover one or more companies. 
    1. Something significant needs to happen for this to change often.
    2. Mark the resume as complete unless changed.
6. Generate cover letter unless not applicable.
    1. Tailor opening remarks to how I perfectly fit the job description.
        1. An in-depth dive into 1 - 3 matching achievements.
        2. Remove the achievement from the list if it is mentioned first, we do not want to overlap or mention something more than once.
        3. Resume content can be reused if it is worth highlighting but ideally we wouldn't reuse content here.
    2. Scale down achievements list to relevant areas from research. 
        1. Resume content should ideally not be included in the list.
    3. Fill in the closing remarks. This should cover either Elixir or Elixir + Phoenix depending on the job description.
    4. The cover letter should somewhat be a love letter. Brag about the company, brag about myself, and show how cute we'd be together.
    5. On the cover letter file, choose the `Open command palette` and choose `Export to PDF`.
    6. Store the PDF in the directory `../../opportunities/prospects/research/(company)/files`.
    7. Mark the cover letter as complete.
7. Navigate to the job post and apply with relevant information.
    1. Some companies may require extra information, it's likely better to do this on the fly though my feelings may change about this over time.
    2. Mark the application as sent and any automated replies in the company's prospect directory.
    3. The directory should move from `opportunities/prospects/research` to `opportunities/prospects/applied` to note stage transitions. This keeps directories tidy.
8. Further research will be required for interviews. As interviews are scheduled, the directory should move from `opportunities/prospects/applied` to `opportunities/prospects/interviewing`.
	1. Lookup the company software stack on [StackShare - Software and technology stacks used by top companies](https://stackshare.io/). Blog posts or Google may also point to infrastructure.
	2. Companies will vary from Remote, the company our templates were based on.
9. As interviews progress to tests or assignments, the stage may or may not change further.
	1. Mark interview correspondence dates (and possibly correspondence content) for interview scheduled and completed on. Repeat as I progress through the hiring process.
10. An opportunity may move to the `rejected` stage by one or both parties. 
	1. It's worth mentioning which direction the rejection happens.
	2. Don't be afraid to reject a company as red flags pop up.
11. An opportunity may also move to the `ghosted` stage by one or both parties.
    1. It's worth mentioning which direction the ghosting happens.
    2. No opportunity is truly one sided as I could've fought harder when it happened.
12. An opportunity may move to the `retry` stage at any point.
    1. This generally happens when I miss a deadline or miss applying when something pops up (as in the case with Stripe)
13. Opportunities should move to the `offered` stage where information is gathered. The offer letter, total compensation calculation, and any other decisions are kept.
14. As interview and pipeline stages progress beyond interviews, company research should be aggregated into the `opportunities/prospects/_templates/year-tech-company` directory.
	1. Rejection from Remote.com came very early so this template isn't as comprehensive as it could be.
15. Eventually, an offer will be accepted or rejected.
	1. Accepted offers
		1. Should have the offer information duplicated in the `opportunities/offers` section. The idea with this section is to group every offer in a single location but I don't generally have my current past offers handy to start this process.
		2. As I start the job, move to the `opportunities/past` section. Any accumulated knowledge like correspondence or instructions should be found here. This should become a current employer knowledge base that changes over time as I move to a new job.
	2. Rejected offers will move to `opportunities/prospects/rejected`, marking the completion date and reason for rejection.

## Retrospectives

Ideally, retrospectives will either happen as a part of every 2 week sprint or individually by opportunity. This should be a lightweight journal entry, the point is to complete it not to spend sleepless nights perfecting them. It's important to document morale, what works or doesn't, and any other insight into the process.

First application to Remote was sent `8/20/2021 4:42pm`

1. [Retrospectives](retrospectives/index.md)
    1. [February 28, 2022](./retrospectives/2022-02-28.md)

## Sources

### Elixir

1. [Elixir (random)](elixir.md)
2. [2022 Chat](elixir-chat--2022.md)
3. [2022 Conferences](elixir-conferences--2022.md)
4. [LinkedIn](elixir-linkedin.md)
5. [2022 Job Boards](elixir-job_boards--2022.md)

### Laravel

1. [Laravel (random)](laravel.md)

### NodeJs

1. [Conferences](node-conferences.md)

### Rejected

1. [Rejected](rejected.md)
