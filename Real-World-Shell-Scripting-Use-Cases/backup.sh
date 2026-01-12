#!/bin/bash
SOURCE_DIR="/etc"
BACKUP_DIR="/backup"
DATE=$(date +%F)

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/etc-backup-$DATE.tar.gz $SOURCE_DIR
echo "Backup completed on $DATE"
