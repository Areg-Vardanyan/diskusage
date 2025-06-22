#!/bin/bash

# Set the threshold percentage
THRESHOLD=80

# Get the current disk usage percentage
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage is above ${THRESHOLD}% (Current usage: ${USAGE}%)"
else
    echo "Disk usage is within limits (Current usage: ${USAGE}%)"
fi
