#!/bin/bash

vault_filename='vault_0.11.3_linux_amd64.zip'
vault_binary='/usr/bin/vault'

if [ "$(grep -c second.gluster.loc /etc/hosts)" -lt 1 ]; then
  echo "192.168.35.55 second second.gluster.loc" >> /etc/hosts
fi
if [ "$(grep -c third.gluster.loc /etc/hosts)" -lt 1 ]; then
  echo "192.168.35.56 third third.gluster.loc" >> /etc/hosts
fi

. /vagrant/provision/common.sh

if [ ! -f "${vault_binary}" ]; then
  echo "DOWNLOADING HASHICORP VAULT..."
  wget -q "https://releases.hashicorp.com/vault/0.11.3/${vault_filename}"
  echo "EXTRACTING HASHICORP VAULT..."
  unzip "${vault_filename}" > /dev/null
  rm "${vault_filename}"
  echo "MOVING HASHICORP VAULT..."
  mv ./vault "${vault_binary}"
fi
