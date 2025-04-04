#!/bin/bash
#clearlogs.sh
LOG_DIR="/var/log"
ARCHIVE_DIR="/var/log/archive"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="logs_$TIMESTAMP.tar.gz"
ARCHIVE_PATH="$ARCHIVE_DIR/$ARCHIVE_NAME"
#Lists all .log files
LOG_FILES=$(find "$LOG_DIR" -type f -name "*.log")
#Archives them
mkdir -p "$ARCHIVE_DIR"
tar -czvf "$ARCHIVE_PATH" $LOG_FILES
#Truncates original files
for log in $LOG_FILES; do
truncate -s 0 "$log"
done
#Confirms operation
echo "Logs archived to: $ARCHIVE_PATH"
echo "Original logs truncated."
