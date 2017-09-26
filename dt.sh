#!/bin/bash
current=$(df /run | grep "/run" | awk '{ print $5 }')
threshold=7
if [ $current -gt $threshold ];
then
echo "send a mail used: $current"
mail -s 'disk space alert' siva.pamula@sap.com' << EOF
your /run partition remaining free space is critically low. used: $current
EOF
fi
