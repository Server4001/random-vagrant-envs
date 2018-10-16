#!/bin/bash

if [ ! -f /etc/yum.repos.d/epel.repo ]; then
  rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
fi

if [ ! -f /usr/bin/redis-server ]; then
  yum install -y redis
fi

if [ ! -f /usr/bin/vim ]; then
  yum install -y vim-enhanced
fi

if [ ! -d /var/run/redis ]; then
  mkdir -p /var/run/redis
  chown redis:redis /var/run/redis
fi

# TODO : Copy configs.

if [ "$(pgrep -f /usr/bin/redis-server | wc -l)" -lt 1 ]; then
  service redis start
fi
if [ "$(pgrep -f /usr/bin/redis-sentinel | wc -l)" -lt 1 ]; then
  service redis-sentinel start
fi
