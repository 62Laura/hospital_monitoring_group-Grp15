#!/bin/bash

# Prompt the user to enter the device name
read -p "Enter the device name: " Monitor_name
./manzi.sh "$Monitor_name"&
# Log file where heart rate data will be stored
log_file="heart_rate_log.txt"

# Function to generate a random heart rate between 40 and 100
generate_heart_rate() {
    echo $((HEART_RATE % 61 + 40))
}

#tail -f heart_rate_log.txt
