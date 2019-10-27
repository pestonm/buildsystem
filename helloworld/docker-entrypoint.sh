#!/bin/sh
set -e 

# create the Builder account

useradd Builder
usermod -G wheel Builder

sudo -u Builder
whoami

# get the ssh keys - volume mount on user's .ssh folder at runtime 
mkdir -p /root/.ssh
cp -v -R /tmp/.ssh /root
ls -ls /root/.ssh
chmod 700 /root/.ssh
chmod 644 /root/.ssh/id_rsa.pub
chmod 600 /root/.ssh/id_rsa
ls -ls /root/.ssh
exec "$@"

