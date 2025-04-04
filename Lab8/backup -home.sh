#!/bin/bash
#backup_home.sh
BACKUP_DIR="/backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_PATH="$BACKUP_DIR/home_backup_$TIMESTAMP"
COMPRESSED_BACKUP="$BACKUP_PATH.tar.gz"
#Create timestamped directory
mkdir -p "$BACKUP_PATH"
#Copy /home to it
cp -r /home "$BACKUP_PATH"
#Compress the backup
tar -czvf "$COMPRESSED_BACKUP" -C "$BACKUP_PATH" home
#Verify backup integrity.
tar -tvzf "$COMPRESSED_BACKUP"
echo "Backup created: $COMPRESSED_BACKUP"
