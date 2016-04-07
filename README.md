script-cron enables users to schedule running of scripts (written in bash, php, python, ruby or go) periodically at certain times or dates.

### Usage
To run it:

    $ docker run -d --name "script-cron" \
        -v /path/to/my/cron/file:/etc/cron.d/do-stuff:ro \
        -v /path/to/scripts/and/data:/data \
        mrskensington/script-cron

You can define multiple cron scripts to run with:

    $ docker run -d --name "script-cron" \
        -v /path/to/my/cron/file1:/etc/cron.d/do-stuff:ro \
        -v /path/to/my/cron/file2:/etc/cron.d/do-more-stuff:ro \
        -v /path/to/my/cron/file3:/etc/cron.d/do-other-stuff:ro \
        -v /path/to/scripts/and/data:/data \
        mrskensington/script-cron

