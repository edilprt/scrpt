#!/bin/bash
ip=$(wget -qO- ipinfo.io/ip);
  while :; do
  sleep 60
  cip=$(wget -qO- ipinfo.io/ip)
if [ $ip != $cip ]
    then echo "miner restart"
fi
done
