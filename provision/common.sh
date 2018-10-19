#!/bin/bash

if [ ! -f /usr/bin/man ]; then
  yum install -y man man-pages
fi

if [ ! -f /etc/yum.repos.d/epel.repo ]; then
  rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
fi

if [ ! -f /usr/bin/vim ]; then
  yum install -y vim-enhanced
fi
if [ ! -f /usr/bin/repoquery ]; then
  yum install -y yum-utils
fi
if [ ! -f /usr/bin/unzip ]; then
  yum install -y unzip
fi
if [ ! -f /usr/bin/nc ]; then
  yum install -y socat telnet nc
fi
if [ ! -f /usr/sbin/lsof ]; then
  yum install -y lsof
fi
