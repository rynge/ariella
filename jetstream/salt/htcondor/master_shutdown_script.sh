#!/bin/bash

# ignore shutdown in the beginning of the uptime - let's the system settle down
UPTIME=`cat /proc/uptime | sed 's/[\. ].*//'`
if [ $UPTIME -lt 1800 ]; then
    exit 0
fi

if [ -e /tmp/do-not-shutdown ]; then
    exit 0
fi

logger "Shutting down node due to lack of work!"

/sbin/shutdown -h now
exit 0


