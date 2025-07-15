#!/bin/bash
PACKAGES=(git vim curl)

for pkg in "${PACKAGES[@]}"
do
  if ! dpkg -s "$pkg" >/dev/null 2>&1; then
    echo "Installing $pkg..."
    sudo apt install -y "$pkg"
  else
    echo "$pkg is already installed."
  fi
done
