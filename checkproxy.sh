#!/bin/bash
a=$(ps -ALL|grep myproxy)
echo $a
if [[ $a == "" ]]; then
  d=$(date)
  echo "$ Not found running. restarting" >>/home/ubuntu/proxy/cron.txt
  cd /home/ubuntu/proxy
  rm /home/ubuntu/proxy/log.txt
  /home/ubuntu/proxy/myproxy
fi
