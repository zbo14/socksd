#!/bin/sh

/usr/sbin/sshd \
  -4De \
  -h /root/.ssh/id_ed25519 \
  -o AllowTcpForwarding=local \
  -o AllowUsers=socksproxy \
  -o PasswordAuthentication=no \
  -o PermitRootLogin=no \
  -o Protocol=2 \
  -p $PORT
