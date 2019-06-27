#!/bin/sh

chmod 700 /home/socksproxy/.ssh
chmod 600 /home/socksproxy/.ssh/authorized_keys

/usr/sbin/sshd \
  -4De \
  -h /root/.ssh/id_ed25519 \
  -o AllowTcpForwarding=local \
  -o AllowUsers=socksproxy \
  -o ClientAliveInterval=15 \
  -o PasswordAuthentication=no \
  -o PermitRootLogin=no \
  -o Protocol=2 \
  -p $PORT
