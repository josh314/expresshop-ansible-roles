#!/bin/sh

apt update -y
apt dist-upgrade -y

if [ -f /var/run/reboot-required ]; then
  echo "Restarting..."
  /sbin/shutdown -r now
fi;