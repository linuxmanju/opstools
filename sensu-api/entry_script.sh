#!/bin/bash

ARG=$1

if [[ "$1" == "bash" ]];
  then
    /bin/bash
else
  /etc/init.d/sensu-api start
  tail -f /var/log/sensu/*.log
fi
