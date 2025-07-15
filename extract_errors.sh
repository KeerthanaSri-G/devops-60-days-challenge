#!/bin/bash

LOGFILE=${1:-/var/log/syslog}

echo "🔎 Extracting error messages from $LOGFILE..."
grep -i "error" "$LOGFILE" > errors_only.log
echo "✅ Errors saved to errors_only.log"
