#!/bin/bash

STATUS=$(systemctl is-active nginx)

if [ "$STATUS" != "active" ]; then
  echo "$(date): nginx was down. Starting it now." >> nginx-monitor.log
  sudo systemctl start nginx
else
  echo "nginx is running normally."
fi
