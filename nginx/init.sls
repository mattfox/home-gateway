nginx:
  pkg:
    - installed

/usr/local/share/www/index.html:
  file.managed:
    - source: salt://nginx/index.html
    - user: root
    - group: root
    - mode: 644

/etc/nginx/sites-enabled/default:
  file:
    - absent

/etc/nginx/sites-available/tiger:
  file.managed:
    - source: salt://nginx/sites-available/tiger
    - user: root
    - group: root
    - mode: 644
/etc/nginx/sites-enabled/tiger:
  file.symlink:
    - target: /etc/nginx/sites-available/tiger

/etc/nginx/sites-available/collectd:
  file.managed:
    - source: salt://nginx/sites-available/collectd
    - user: root
    - group: root
    - mode: 644
/etc/nginx/sites-enabled/collectd:
  file.symlink:
    - target: /etc/nginx/sites-available/collectd

/etc/nginx/sites-available/routes:
  file.managed:
    - source: salt://nginx/sites-available/routes
    - user: root
    - group: root
    - mode: 644
/etc/nginx/sites-enabled/routes:
  file.symlink:
    - target: /etc/nginx/sites-available/routes

