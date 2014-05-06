php-pkgs:
  pkg.installed:
    - pkgs:
      - php5
      - php5-gd
      - php5-curl
      - php5-mcrypt
      - php5-mysql

/etc/php5/apache2/conf.d/20-mcrypt.ini:
  file.symlink:
    - target: /etc/php5/mods-available/mcrypt.ini


