# Archive Content / Zip Module

This was my first project at Rethink. The problem domain was to introduce a new way of zipping uploaded content. 

## Existing Behavior

The user would utilize the custom CMS, adding content as necessary. The user would click the publish button link when complete that would trigger the publishing workflow managed via client-side JavaScript. This required the user's browser to stay on the page until all processing was complete. This could take anywhere from 5 to 45 minutes at its peak. Content for a given series could be published multiple times in a given month, requiring the user to wait every time.

Zips would be created locally on the web server and when completed, files would be pushed via ssh to a separate machine on the network for downloading. Downloads would be proxied through the separate download machine with its own tracking database as a way to obscure content naming and location. The process was exceptionally complex, using a bespoke MVC architecture while also pushing state between client and server round trips. It was difficult to debug without manipulating state. There was no staging ecosystem, discovery required carefully isolating portions on the production system.

## New Approach

A 2-step process where the publish action writes a set of job records to the `zipModule` table. A cronjob on the download proxy machine would poll the table for jobs and zip content according to the data provided. This did two things, allowed publishing to be set as complete immediately and eliminated the biggest bottleneck for large files: network transfer speeds. While the machines were in the same physical data center, transferring 2-3gb would take a while to complete.

To keep the database tables from growing too large, records were updated or created if new. Rudimentary telemetry was also captured like the time of execution. This allowed us to gain an understanding of how long the process took from publish to completion. A cronjob locking mechanism was also utilized to make sure no jobs would overlap during long-running execution.

## Post-mortem

There were bottlenecks as the process was sequential in nature. As the queue and file sizes grew, execution took longer to complete. Splitting the processing to use a parallel approach was floated as an option but fortunately there wasn't a lot of processing traffic to need this.

There were also very few trouble tickets under the new system, so little that I would manually monitor the behavior. This was before Rethink leveraged frameworks like Laravel and we had few custom monitors in place to alert us to failures.
