#!/bin/bash
HOST_DOMAIN="host.docker.internal"                    
grep -q $HOST_DOMAIN /etc/hosts && exit

HOST_IP=$(/sbin/ip route | awk '/default/ { print $3 }' | awk '!seen[$0]++')
echo -e "$HOST_IP\t$HOST_DOMAIN" >> /etc/hosts

# Execute chained command
CHAIN="$1"
if [ -x "${CHAIN}" ] ; then
  shift
  exec "${CHAIN}" "$@"
fi

