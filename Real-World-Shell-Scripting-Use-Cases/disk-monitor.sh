#!/bin/bash
THRESHOLD=80
USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "WARNING: Disk usage is ${USAGE}% on $(date)" >> /var/log/disk_alert.log
else
  echo "Disk usage is normal: ${USAGE}%"
fi
