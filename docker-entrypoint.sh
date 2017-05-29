#!/bin/sh

if [ -n $ID_RSA_FILE ] then
	ssh-add $ID_RSA_FILE
fi

exec "$@"