#!/bin/bash

/etc/init.d/salt-master stop
/etc/init.d/salt-minion stop
/etc/init.d/crond stop
/etc/init.d/condor stop
/etc/init.d/autofs stop

rm -f /etc/salt/minion_id

chkconfig mdmonitor off

yum -y remove gdm realvnc-vnc-server novnc gnome-session

