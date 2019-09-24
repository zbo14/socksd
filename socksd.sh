#!/bin/bash -e

/usr/sbin/sshd \
  -4De \
  -h /root/.ssh/socksd \
  -o AllowTcpForwarding=local \
  -o AllowUsers=socksproxy \
  -o ClientAliveInterval=15 \
  -o PasswordAuthentication=no \
  -o PermitRootLogin=no \
  -o Protocol=2 \
  -p $PORT
