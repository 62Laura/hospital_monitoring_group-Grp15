#!/bin/bash
LOG_FILE="heart_rate_log.txt"
if [ -f "$LOG_FILE" ]; then
	TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
	ARCHIVED_LOG_FILE= "$(LOG_FILE)_$(TIMESTAMP)"
	mv "$LOG_FILE" "$ARCHIVED_LOG_FILE"
	echo "Log file archived as: $ARCHIVED_LOG_FILE"
else
	echo "Log file $LOG_FILE not found!"
fi
