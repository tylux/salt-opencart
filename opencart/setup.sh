mkdir /var/www/
cd /var/www
wget https://github.com/opencart/opencart/archive/master.zip
unzip master.zip
mkdir /var/www/opencart
cd /var/www/opencart-master/upload && cp -R * /var/www/opencart
cp /var/www/opencart/config-dist.php /var/www/opencart/config.php
cp /var/www/opencart/admin/config-dist.php /var/www/opencart/admin/config.php
rm /var/www/opencart/config-dist.php && rm /var/www/opencart/admin/config-dist.php
cd /var/www
rm master.zip
chown www-data:www-data -R /var/www/opencart
chown www-data:www-data -R /var/www/opencart
service apache2 restart
