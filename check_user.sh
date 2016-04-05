#!/bin/bash

if getent passwd $1 ; then
	echo "User $1 exists.."
else
	echo "User $1 does not exist."
fi
