#!/bin/bash
echo "Deleting logs older than 7 days from /var/log..."
sudo find /var/log -type f -mtime +7 -exec rm -f  {} \;
echo "Cleanup complete."
