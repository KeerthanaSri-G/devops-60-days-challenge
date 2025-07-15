#!/bin/bash

USERNAME=$1

if id "$USERNAME" >/dev/null 2>&1; then
  echo "👤 User '$USERNAME' already exists."
else
  sudo useradd -m -G devops "$USERNAME"
  echo "✅ User '$USERNAME' created and added to 'devops' group."
fi
