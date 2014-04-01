#!/bin/bash
rm -rf /var/www/opencart/install
aptitude remove --purge salt-minion
rm -rf /srv/salt
