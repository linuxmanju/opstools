#!/bin/bash

ARG=$1

if [[ "$1" == "bash" ]];
  then
    /bin/bash
else
  /etc/init.d/rabbitmq-server start
  sleep 4
  if ! rabbitmqctl list_vhosts| grep -i sensu > /dev/null
    then
      rabbitmqctl add_vhost /sensu
      rabbitmqctl add_user sensu sensu
      rabbitmqctl set_permissions -p /sensu sensu ".*" ".*" ".*"
  fi
  tail -f /var/log/rabbitmq/*
fi
