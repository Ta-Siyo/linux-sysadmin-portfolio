#!/bin/bash

BACKUP_DIR="$HOME/backups"
TIMESTAMPS=$(DATE +"%Y-%m-%d_%H-%M-%S")

mkdir -p "BACKUP_DIR"

tar -czf "$BACKUP_DIR/home_backup_$TIMESTAP.tar.gz" "HOME"

find "$BACKUP_DIR" -type f -name "*.tar.gz*" -mtime +7 -delete

echo "Backup completed: home_backup_$TIMESTAMP.tar.gz"

