#!/usr/bin/env bash
mkdir archived_logs_group15
mv heart_rate_log.txt_* archived_logs_group15/
scp -r archived_logs_group15/ f24745613c98@f24745613c98.7b3ea1d9.alu-cod.online:/home/
