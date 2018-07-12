#!/bin/bash

#set log files to empty themselves either periodically and/or when they reach a threshold

#this will identify all files
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
#TRUNCATE=$(truncate -s 0 /var/log/asterisk/*)
#THRESHOLD=70

if [ "$CURRENT" > 80 ] | [ "$CURRENT"  = 80 ] ; then
#this erases all logfiles in the asterisk log directory
    alias proj="truncate -s 0 /var/log/asterisk/*"
fi

