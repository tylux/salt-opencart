{% from 'top.sls' import mysql_password %}

mysql-pkgs:
  pkg.installed:
    - pkgs:
      - mysql-server
      - mysql-client

python-mysqldb:
  pkg:
    - installed
    - require:
      - pkg: mysql-pkgs

opencart:
  mysql_database.present:
    - require:
      - pkg: python-mysqldb
  mysql_user.present:
    - name: opencart
    - host: localhost
    - password: {{ mysql_password }}
    - require:
      - pkg: python-mysqldb
  mysql_grants.present:
    - grant: all privileges
    - database: 'opencart.*'
    - user: opencart
    - order: last
