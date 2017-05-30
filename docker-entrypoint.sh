#!/bin/sh

if [ -n $ID_RSA_FILE ] 
then
	cp $ID_RSA_FILE ~/.ssh/id_rsa
fi

sh -c "$@"