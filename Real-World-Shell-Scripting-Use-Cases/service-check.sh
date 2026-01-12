#!/bin/bash
SERVICE="ssh"

systemctl is-active --quiet $SERVICE
if [ $? -eq 0 ]; then
  echo "$SERVICE is running"
else
  systemctl start $SERVICE
fi
