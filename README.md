# webmon-cron

Simple script that goes through a list of URLs to hit and hit them, asserting a
200 response. The list of URLs is a simple text file:

```
https://example.com
https://reddit.com
```

It is then invoked as:

    ./webmon.sh urls.txt

This is designed to be ran in a cron: there's no output if everything is fine.
