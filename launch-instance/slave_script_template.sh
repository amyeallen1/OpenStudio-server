#!/bin/sh

# Not sure why we are doing this
mkdir /home/ubuntu/test

# Change Host File Entries
ENTRY="MASTER_IP MASTER_HOSTNAME"
FILE=/etc/hosts
if grep -q "$ENTRY" $FILE; then
  echo "entry already exists"
else
  echo $ENTRY >> /etc/hosts
fi

# NL Remove sudo on this command as you should already be sudo
# NL No need to restart networking if only changing host entries
# service networking restart




