#!/bin/bash

echo "🖥️ Starting CPU and Memory Monitoring..."
while true
do
  echo "---- $(date) ----" >> resource_log.txt
  echo "CPU Load:" >> resource_log.txt
  top -bn1 | grep "load average" >> resource_log.txt
  echo "Memory Usage:" >> resource_log.txt
  free -h >> resource_log.txt
  echo "--------------------------" >> resource_log.txt
  sleep 5
done
