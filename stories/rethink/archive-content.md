# Archive Content / Zip Module

This was my first project at Rethink. The problem domain was to introduce a new way of zipping uploaded content. The existing system would be triggered by a publish command that processed as long-running execution requiring the browser to be present to complete. Publishing completion depended on archival being done first.

The process would archive locally but push files via ssh to a separate machine on the network for downloading. Downloads would be proxied through the other machine with its own database as a way to obscure content naming. The process was also exceptionally complex, using a custom MVC architecture while also pushing state around so it was difficult to follow without a lot of state manipulation techniques.

The migration moved processing to a 2-step process where publishing writes a custom set of job records that are picked up by a cronjob running directly on the download proxy machine. This allowed publishing to be set as complete very quickly and eliminated the biggest bottleneck for large files: network transfer speeds.

To keep database tables from processing too much information, records were updated or created if new. Rudimentary telemetry was captured like time of execution to get an understanding how long archiving took place as files varied in size. This helped with an understanding of how long it took from publish to completion. A cronjob locking mechanism was used to make sure no jobs would overlap during long-running execution.

There were bottlenecks as the process was sequential in nature so as the queue and file sizes grew, execution took longer and longer to complete. Splitting processing to use a parallel/concurrent approach was an option but fortunately there wasn't a lot of processing traffic.
