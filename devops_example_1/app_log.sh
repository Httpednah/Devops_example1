#!/bin/bash
LOG_DIR="/home/$USER/log"
BACKUP_DIR="/home/$USER/backups"
TIMESTAMP=$(date +"%y-%m-%d")

cd $LOG_DIR || exit 1

step 3
echo "taking a backup snapshot of app.log..."
cp app.log app.log.$TIMESTAMP

#step 4
echo "Emptying the active log file..."
> app.log

#step 5
compress and zip file back up file
tar -czf $BACKUP_DIR/app.log.$TIMESTAMP.tar.gz app.log.$TIMESTAMP

rm app.log.$TIMESTAMP

echo "Success! Log backup completed."


