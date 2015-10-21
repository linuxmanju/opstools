#!/bin/bash

if [[ $1 == bash ]]; then
	/bin/bash
else
   /etc/init.d/{redis-flapjack,postfix,flapjack} restart
   tail -f /var/log/flapjack/*.log
fi   
