#!/bin/sh
# Start cron in the background
cron &
sleep 1
crontab /etc/crontab
touch /var/log/cron.log
tail -f /var/log/cron.log &
wait