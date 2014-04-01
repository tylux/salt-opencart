#!/bin/bash
wget -O - http://bootstrap.saltstack.org | sudo sh
sudo mkdir /srv
git clone git@github.com:tylux/salt-opencart.git salt
cd /srv/salt/
