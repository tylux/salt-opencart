{% from 'top.sls' import default_domain_name, admin_email %}

# Apache configuration
/etc/apache2/*:
  file.recurse:
    - name: /etc/apache2
    - source: salt://apache/config
    - user: root
    - group: root
    - file_mode: 644
    - template: jinja
    - context:
    - default_domain_name: {{ default_domain_name }}
    - admin_email: {{ admin_email }}

/etc/apache2/sites-enabled/opencart:
  file.symlink:
    - target: /etc/apache2/sites-available/opencart

/var/www:
  file.directory:
    - makedirs: True

apache2:
  pkg:
    - installed
  service:
    - running
    - watch:
      - pkg: apache2
      - file: /etc/apache2/*
