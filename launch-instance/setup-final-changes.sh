#!/bin/sh

sudo usermod -U ubuntu
cat /dev/null > ~/.ssh/authorized_keys
sudo -i
cat /dev/null > /var/www/rails/openstudio/log/download.log
cat /dev/null > /var/www/rails/openstudio/log/mongo.log
cat /dev/null > /var/www/rails/openstudio/log/development.log
cat /dev/null > /var/www/rails/openstudio/log/production.log
cat /dev/null > /var/www/rails/openstudio/log/delayed_job.log
rm -f /var/www/rails/openstudio/log/test.log
rm -rf /var/www/rails/openstudio/public/assets/*
rm -rf /var/www/rails/openstudio/tmp/*
cat /dev/null > /var/log/auth.log
cat /dev/null > /var/log/lastlog
cat /dev/null > /var/log/kern.log
cat /dev/null > /var/log/boot.log
rm -f /data/launch-instance/*.pem
rm -f /data/launch-instance/*.log
rm -f /data/launch-instance/*.json
rm -f /data/launch-instance/*.yml
rm -f /data/worker-nodes/README.md
rm -f /data/worker-nodes/rails-models/mongoid-vagrant.yml
rm -rf /var/chef
cat /dev/null > ~/.bash_history && history -c
apt-get clean