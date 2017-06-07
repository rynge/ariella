#!/bin/bash

find /root/ -maxdepth 1 -name .ariella.auto-update -mmin +720 -exec rm -f {} \;
if [ -e /root/.ariella.auto-update ]; then
    exit 0
fi

cd /srv/ariella
git pull

touch /root/.ariella.auto-update


