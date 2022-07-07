# Prospective Job Opportunities

Markdown templates for research, interview notes, correspondence, and associated attachments.

## Summary

The [generator](generate.sh) shell script looks for the `_templates/year-tech-company/` directory. Template files and directories, with the exception of those prefixed with `_`, are copied to the `research` directory as we typically create this for the research phase. The name is `slugified` to handle special characters and to unify a naming convention.

## Usage

Arguments can be supplied to change the defaults for year, technology, and to skip the prompt for a list of companies. If you're using a technology that is not `elixir`, feel free to modify the `TECHNOLOGY` variable in the shell script.

Arguments:
```shell
 -y|--year
   Year to prefix
     Defaults to current year
 -t|--tech(nology)
   Technology grouping
     Defaults to "elixir"
 -c|--companies
   Companies delimited by comma, jobs are grouped by company in the case of multiple applications
     Defaults to prompt for input
```

## Updating

It is recommended to periodically curate and update the `_templates/year-tech-company/` template files. Organizational patterns will start to appear over time. If you never use a section, it makes sense to remove it. If you're always adding a section, move it to the template before your next generation. Occasionally, I would incorporate the changes through previously-generated files but that takes a fair amount of work.

## v1 Issues

While there are likely far more pain points than good, the system is highly functional for me when I invest the time. I'm currently looking for ways to save time on the way to a more automated v2.

### The Good

1. If I waited on an application to be "good enough," I wouldn't have interviewed anywhere.
2. The fact that I have any traction is not miraculous but is a testament to something obviously good enough.
3. The bulk of my needs are honestly met pretty well with Obsidian.

### The Bad

1. This methodology would likely have much smaller file sizes on disk if using an object storage like S3 since we're leveraging git.
2. Stage-as-a-parent-directory isn't too difficult from this side of things but it would likely be difficult to track files between git commits.
3. Storing files historically will become a problem when you apply to the same place and end in the same stage. If you're rejected twice you then have to dance around naming one or more directories differently.
    1. This is mitigated if you apply towards the end of the year, where hiring is at its peak in our industry. You get directories like `2021-elixir-example` and `2022-elixir-example`.
    2. I have no real convention for when this happens but it would be useful to nail that down.
4. It's not easy to get a 10,000 ft view without keeping a sort of "dashboard" file you update manually.
    1. I'm looking into using Livebook to help with this. Files and text follows a relatively rigid naming convention but even the slightest deviation would be problematic.
    2. I don't currently have this dashboard file so todo apps are how I track what I should be doing next.
5. Notes during interviews aren't easy for me to categorize on-the-fly so I tend to brain dump then cleanup later.
    1. Sometimes I omit the cleanup phase but I think that's a bad idea.
    2. The longer I wait, the harder it is to keep the context in memory.
6. While this is currently a manual process, I'm looking to wire up a web application to cover it in the future.
    1. Rather than wait for that slow process to complete an alpha/beta usable version, I felt it was better to start this way to spin something up quickly.
    2. One goal is to be able to import and export this format. That would be a crude backup/restore mechanism while also allowing for a manual escape hatch back to this approach.
7. While I keep a lot of this in active memory, it is easy to get disorganized quickly.
    1. I feel like I'm spending a lot of time in the curation phase where I don't execute as often as I should.
    2. There are no notifications, no automation, so no real nudges to do what I need. Todo apps reminders aren't enough as there is a disconnect.
