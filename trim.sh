#!/bin/bash
# Script to run fstrim on root and log results to /var/log/trim.log in user-friendly manere

trimSize=$( fstrim / -v | cut -f 2 -d ' ')
trimSize=$((trimSize / (1024 * 1024)))

echo "fstrim: $trimSize Mb were trimmed"
echo -e "$(date +'%d %b %Y %T'):\t$trimSize Mb were trimmed" >> /var/log/trim.log

