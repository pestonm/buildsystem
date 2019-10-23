#!/bin/sh
set -e 

# create the Builder account

useradd Builder
usermod -G wheel Builder

# get the script
mkdir -p /root/.ssh
cp -v -R /tmp/.ssh /root
ls -ls /root/.ssh
chmod 700 /root/.ssh
chmod 644 /root/.ssh/id_rsa.pub
chmod 600 /root/.ssh/id_rsa
ls -ls /root/.ssh
exec "$@"

