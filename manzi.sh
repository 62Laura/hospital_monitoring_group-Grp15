#!/usr/bin/env bash

# Check if the device name is passed as an argument
if [ -z "$1" ]; then
    echo "Error: Device name not provided."
    exit 1
fi

devName="$1"

# Infinite loop to log heart rate data every second
while true; do
    rand=$(shuf -i 40-100 -n 1)
    echo "$(date +"%F %T") $devName $rand" >> heart_rate_log.txt
    sleep 1
done

