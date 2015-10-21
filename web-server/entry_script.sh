#!/bin/bash

ARG=$1

if [[ "$1" == "bash" ]];
  then
    /bin/bash
else
  /etc/init.d/nginx start
  tail -f /var/log/nginx/access.log
fi
