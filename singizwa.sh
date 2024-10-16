#!/usr/bin/env bash

# Prompt the user for the device name
read -p "Enter device name: " devName

# Call the manzi.sh script with the device name as an argument
./manzi.sh "$devName" &

# Print the background process ID
echo "Logging process started with PID: $!"

