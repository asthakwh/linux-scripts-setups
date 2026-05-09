# automate any script 

crontab -e
0 2 * * * /home/your-user/name.sh >> /var/log/system_update.log 2>&1
