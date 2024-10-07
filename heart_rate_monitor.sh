#!/bin/bash

# Prompt the user to enter the device name
read -p "Enter the device name: " Monitor_name

# Log file where heart rate data will be stored
log_file="heart_rate_log.txt"

# Function to generate a random heart rate between 40 and 100
generate_heart_rate() {
    echo $((HEART_RATE % 61 + 40))
}

# Run the heart rate recording process in the background
(
    while true; do
        # Get current timestamp
        timestamp=$(date '+%Y-%m-%d %H:%M:%S')

        # Generate a random heart rate
        heart_rate=$(generate_heart_rate)

        # Write the data to the log file
        echo "$timestamp $device_name $heart_rate" >> $log_file

        # Wait for 1 second before the next iteration
        sleep 1
    done
) &

# Display the process ID (PID) of the background process
echo "Heart rate monitor script running in the background with PID: $ID"
