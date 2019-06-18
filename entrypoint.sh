#!/bin/sh

chmod 700 /home/socksproxy/.ssh
chmod 600 /home/socksproxy/.ssh/authorized_keys

/usr/sbin/sshd -4d
