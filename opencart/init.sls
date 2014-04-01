/var/www/opencart:
  cmd:
    - script
    - source: salt://opencart/setup.sh
    - onlyif: 'test ! -e /var/www/opencart'
