#!/bin/bash

# hack - we need an extra reboot to get the disk correctly resized
#if [ ! -e /tmp/.ariella.reboot.1 ]; then
#    touch /tmp/.ariella.reboot.1
#    cd /srv/ariella
#    git fetch --all
#    git reset --hard origin/master
#
#    cd /srv/ariella/jetstream
#    ./bootstrap.sh
#    reboot
#    exit 0
#fi

find /tmp/ -maxdepth 1 -name .ariella.auto-update -mmin +60 -exec rm -f {} \;
if [ -e /tmp/.ariella.auto-update ]; then
    exit 0
fi

cd /srv/ariella
git fetch --all
git reset --hard origin/master

touch /tmp/.ariella.auto-update


