#!/bin/bash

echo "External IP: ${EXTERNAL_IP}"

export PATH=/usr/lib/plesk-9.0:/usr/lib64/plesk-9.0:${PATH}
service mysql start
psa_service execute_actions
psa_service startall
plesk sbin pleskrc nginx start
exec plesk log --all
