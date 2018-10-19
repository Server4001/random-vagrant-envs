#!/bin/bash

if [ "$(grep -c first.gluster.loc /etc/hosts)" -lt 1 ]; then
  echo "192.168.35.54 first first.gluster.loc" >> /etc/hosts
fi
if [ "$(grep -c third.gluster.loc /etc/hosts)" -lt 1 ]; then
  echo "192.168.35.56 third third.gluster.loc" >> /etc/hosts
fi

. /vagrant/provision/common.sh

# Bash configs.
cp /vagrant/config/bash/second.root.bashrc /root/.bashrc
cp /vagrant/config/bash/second.vagrant.bashrc /home/vagrant/.bashrc
chown vagrant:vagrant /home/vagrant/.bashrc
