#!/bin/sh

CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=70

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
cd /var/log/asterisk
sudo truncate -s 0 *
fi
