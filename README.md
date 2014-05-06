salt-opencart
=================

## known bugs:
- none

## Description

Salt State configuration files for deploying Opencart v.1.5.6.1 on an LAMP server

## How to Run

1 . setup script: misc/setup_script.sh

```bash
wget -O - http://bootstrap.saltstack.org | sudo sh
sudo mkdir /srv/salt
cd /srv
git clone git@github.com:tylux/salt-opencart.git salt
cd /srv/salt
```

2 . Edit top.sls
  - Put in your opencart  user mysql password 
  - Put in your email address for apache admin email 
  - Put in your domain name example: testopencart.com

3 . Run Salt-Call to install everything misc/install.sh

```bash
sudo salt-call --local state.highstate -l debug
```

4 . Then go hit the server in a web browser and fill in the following
  - Database name: opencart
  - Database user: opencart
  - Database password: what you chose in top.sls
 
5 .  Cleanup script to remove opencart install dir and remove salt from the system misc/cleanup.sh

```bash
rm -rf /var/www/opencart/install
aptitude remove --purge salt-minion
rm -rf /srv/salt
```


