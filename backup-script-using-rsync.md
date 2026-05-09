Uses rsync to copy files from a source directory to a backup location
Preserves file permissions and timestamps
Runs daily using cron

give yourself ownership:

      sudo touch /var/log/backup_rsync.log
      sudo chown ubuntu:ubuntu /var/log/backup_rsync.log

      
    #!/bin/bash

    # Configuration
    #source directory path
    SOURCE="/home/ubuntu/"
    #dest where you want to save backup
    DESTINATION="/home/backupfile/"
    LOGFILE="/var/log/backup_rsync.log"
    # Add a timestamp to the log
    echo "--- Backup started at $(date) ---" >> $LOGFILE

    # Run rsync
    rsync -av --delete "$SOURCE" "$DESTINATION" >> $LOGFILE 2>&1

    echo "--- Backup finished at $(date) ---" >> $LOGFILE

Now Automate

    crontab -e
To run backup every minut

    * * * * * /home/ubuntu/backup.sh >> /tmp/cron_debug.log 2>&1

 Check the System Logs
 
     journalctl -u cron -n 20
     cat /tmp/cron_debug.log

