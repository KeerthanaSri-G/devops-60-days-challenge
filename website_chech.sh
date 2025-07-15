#!/bin/bash
WEBSITE="https://www.learnxops.com"

if curl -s --head "$WEBSITE" | grep "200 OK" >/dev/null
then
 echo "$WEBSITE is reachable."
else
 echo "$WEBSITE is not reachable."
fi
