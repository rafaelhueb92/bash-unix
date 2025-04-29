BACKUP_DIR=backups
timestamp=$(date +%Y%m%d_%H%M%S)
path=/var/log/*.log

mkdir -p $BACKUP_DIR
tar zcvf $BACKUP_DIR/$timestamp.tar.gz $path
find "$BACKUP_DIR" -name "*.tar.gz" -mtime +7 -exec rm {} \;