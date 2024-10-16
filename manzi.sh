#!/usr/bin/env bash

# Function to generate a random heart rate between 40 and 100
generate_heart_rate() {
  echo $((RANDOM % 61 + 40))
}

# Get the device name passed as an argument
monitor_name=$1
echo "$1"
# Start logging heart rate data to heart_rate_log.txt
while true
do
  # Get the current timestamp
  timestamp=$(date +"%Y-%m-%d %H:%M:%S")

  # Generate a random heart rate
  heart_rate=$(generate_heart_rate)

  # Log the data: timestamp, device name, and heart rate
  echo "$timestamp $device_name $heart_rate" >> heart_rate_log.txt

  # Wait for 1 second before the next log
  sleep 1
done

