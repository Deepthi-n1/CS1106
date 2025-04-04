#!/bin/bash
# Step 1: Create /var/log/backups directory if it doesn&#39;t exist
BACKUP_DIR=&quot;/var/log/backups&quot;
if [ ! -d &quot;$BACKUP_DIR&quot; ]; then
sudo mkdir -p &quot;$BACKUP_DIR&quot;
&quot;Backup directory created at $BACKUP_DIR&quot;
fi
# Step 2: Compress all .log files into backup YYYYMMDD.tar.gz
DATE=$(date +%Y%m%d)
ARCHIVE_NAME=&quot;backup_$DATE.tar.gz&quot;
sudo tar -czf &quot;$BACKUP_DIR/$ARCHIVE_NAME&quot; /var/log/*.log
echo &quot;All .log files compressed into $ARCHIVE_NAME&quot;
# Step 3: List the created archive
echo &quot;Created archive:&quot;
ls -lh &quot;$BACKUP_DIR/$ARCHIVE_NAME&quot;
