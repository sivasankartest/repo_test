#!/bin/bash
START=$(date +%s)
df -h
cd /var/www/html;ls -ltr
END=$(date +%s)
DIFF=$(( $END - $START ))
DIFF=$(( $DIFF / 60 ))
