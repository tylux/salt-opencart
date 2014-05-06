#!/bin/bash
wget -O - http://bootstrap.saltstack.org | sudo sh
sudo mkdir /srv
git clone git@github.com:tylux/salt-opencart.git salt
cd /srv/salt/
sudo mkdir /srv/salt
cd /srv
wget https://source.gearshiftcloud.com/gscloud/salt-opencart/repository/archive.tar.gz
tar -zxvf archive.tar.gz
