#!/bin/bash

if [[ $1 == bash ]]; then
	/bin/bash
else
  for i in redis-flapjack postfix flapjack
  do
    /etc/init.d/$i start
  done
   tail -f /var/log/flapjack/*.log
fi   
