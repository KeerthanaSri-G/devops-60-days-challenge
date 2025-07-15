#!/bin/bash
if [ -f "$1" ]; then
   echo "File found: $1"
   cat "$1"
 else
   echo "File not found: $1"
 fi
