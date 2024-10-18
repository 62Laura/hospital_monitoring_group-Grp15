#!/usr/bin/env bash
echo "Creating directory archived_logs..."
mkdir -p archived_logs
echo "Moving heart rate logs to archived_logs..."
mv heart_rate_log.txt_* archived_logs/
