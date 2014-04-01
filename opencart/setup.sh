mkdir /var/www/
cd /var/www
wget https://github.com/opencart/opencart/archive/v1.5.6.1.zip
unzip v1.5.6.1.zip
mkdir /var/www/opencart
cd /var/www/opencart-1.5.6.1/upload && cp -R * /var/www/opencart
cp /var/www/opencart/config-dist.php /var/www/opencart/config.php
cp /var/www/opencart/admin/config-dist.php /var/www/opencart/admin/config.php
rm /var/www/opencart/config-dist.php && rm /var/www/opencart/admin/config-dist.php
cd /var/www
rm v1.5.6.1.zip
chown www-data:www-data -R /var/www/opencart
rm -rf /var/www/opencart-1.5.6.1
service apache2 restart
