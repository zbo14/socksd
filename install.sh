#!/bin/bash -e

chmod u+x socksd.sh
cp socksd.sh /usr/bin

cp socksd.service /etc/systemd/system/

mkdir -p /etc/socksd/
cp socksd.conf /etc/socksd/socksd.conf

mkdir -p /root/.ssh
ssh-keygen -t ed25519 -f /root/.ssh/socksd -N ''

useradd -m socksproxy
passwd socksproxy

mkdir -p /home/socksproxy/.ssh
touch /home/socksproxy/.ssh/authorized_keys

chown -R socksproxy /home/socksproxy/.ssh
chmod 700 /home/socksproxy/.ssh
chmod 600 /home/socksproxy/.ssh/authorized_keys