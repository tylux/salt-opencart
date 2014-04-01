# This is used to set the opencart mysql user password
{% set mysql_password = 'supersecretpassword' %}

# This is used for apache's admin email
{% set admin_email = 'youremail@email.com' %}

# This is used to set apache vhost's domain name
{% set default_domain_name = 'testopencart.com' %}

base:
  '*':
    - apache
    - php
    - mysql
    - misc
    - opencart
