#!/bin/bash

ARG=$1

if [[ "$1" == "bash" ]];
  then
    /bin/bash
else
  /etc/init.d/uchiwa start
  tail -f /var/log/uchiwa.*
fi
