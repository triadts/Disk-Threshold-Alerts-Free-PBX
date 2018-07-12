#!/bin/bash

#set log files to empty themselves either periodically and/or when they reach a threshold

#this will identify all files
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's%//g')
#THRESHOLD=70

if [ "$CURRENT" > 80 ] | [ "$CURRENT"  = 80 ] ; then
#this should only erase log files that have reached the threshold
truncate -s 0 /var/log/asterisk/*
fi

