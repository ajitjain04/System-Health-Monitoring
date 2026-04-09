#!/bin/bash
# Main script to run all monitors and save to log

LOG_DIR="../logs"
mkdir -p $LOG_DIR
LOG_FILE="$LOG_DIR/health_report_$(date +%F_%H-%M-%S).log"

{
    sh monitor_cpu_memory.sh
    sh monitor_disk_network.sh
    sh monitor_process_users.sh
} >> $LOG_FILE 2>&1

echo "System health report saved to $LOG_FILE"