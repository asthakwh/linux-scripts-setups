#apache2-service-starts

#!/bin/bash
SERVICE="apache2"
if systemctl is-active --quiet $SERVICE; then
echo "$SERVICE is up and running"
else
echo "$SERVICE is not running, restarting..."
sudo systemctl start $SERVICE
if systemctl is-active --quiet $SERVICE; then
echo "$SERVICE restarted successfully"
else
echo "Failed to restart $SERVICE"
fi
fi
