#!/usr/bin/env bash
# Script to archive the heart_rate_log.txt file by renaming it with a timestamp

timestamp=$(./larissa.sh)
mv heart_rate_log.txt "heart_rate_log.txt_$timestamp"

