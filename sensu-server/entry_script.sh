#!/bin/bash

ARG=$1

if [[ "$1" == "bash" ]];
  then
    /bin/bash
else
  /etc/init.d/sensu-server start
  /etc/init.d/sensu-client start
  tail -f /var/log/sensu/*.log
fi
