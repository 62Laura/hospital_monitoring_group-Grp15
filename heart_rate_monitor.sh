#!/usr/bin/env bash

# Prompt the user for the device name
read -p "Enter device name: " devName

# Infinite loop to log heart rate data every second
while true; do
    rand=$(shuf -i 40-100 -n 1)
    echo "$(date +"%F %T") $devName $rand" >> heart_rate_log.txt
    sleep 1
done &
echo "$!"



