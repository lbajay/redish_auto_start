#!/bin/bash
a=$(redis-cli -p 6379 PING)
if [ "$a" = "PONG" ]
then
   echo "$a"
else
   echo "unfortunately stopped , redis is starting again"
    sudo systemctl start redis.service
  cd /var/www/html/datamanager/
php artisan run:command --command="websocket:serve"

fi
