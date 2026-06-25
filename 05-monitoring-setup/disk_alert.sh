#!/bin/bash

THRESHOLD=80

USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then 
    echo "ALERT: Disk usage is above $THRESHOLD%"
else
    echo "Disk usage normal: $USAGE%"
fi
