#!/bin/bash

if [ "$(grep -c first.gluster.loc /etc/hosts)" -lt 1 ]; then
  echo "192.168.35.54 first first.gluster.loc" >> /etc/hosts
fi
if [ "$(grep -c second.gluster.loc /etc/hosts)" -lt 1 ]; then
  echo "192.168.35.55 second second.gluster.loc" >> /etc/hosts
fi

