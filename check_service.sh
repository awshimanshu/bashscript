#!/bin/bash
NOW=$(date "+%F %T %Z")
LOG_MESSAGE="$NOW - Mongodb crashed, restarting"

if  ! pgrep -c mongo 1>/dev/null 2>/dev/null; then
  systemctl restart mongod
  echo $LOG_MESSAGE >> /root/scripts/check_mongo.log
else
   echo "Mongodb is running"
fi
