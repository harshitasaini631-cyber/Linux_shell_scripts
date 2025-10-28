#!/bin/bash
# Script Name: monitor_system.sh
# Purpose: To log CPU and memory usage at regular intervals
# Author: Harshita saini
# Date: 28-Oct-2025

# File to store the log
log_file="system_log.txt"

# Time interval in seconds
interval=5

echo "Logging CPU and Memory usage every $interval seconds..."
echo "Press Ctrl+C to stop."

# Loop to record data
while true
do
    echo "----------------------------" >> $log_file
    date >> $log_file
    echo "CPU Usage:" >> $log_file
    top -bn1 | grep "Cpu(s)" >> $log_file
    echo "Memory Usage:" >> $log_file
    free -h >> $log_file
    sleep $interval
done

