CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=80

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
    mail -r <companynamePBX> -s 'Disk Space Alert' recipient@domain.com << EOF
Your root partition remaining free space is critically low. Used: $CURRENT%
EOF
fi

