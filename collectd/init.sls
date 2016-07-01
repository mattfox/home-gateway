collectd:
  pkg:
    - installed

collectd-dependencies:
  pkg.installed:
    - pkgs:
      - fcgiwrap
      - libconfig-general-perl
      - librrds-perl
      - libregexp-common-perl

/etc/collectd/collectd.conf:
  file.managed:
    - source: salt://collectd/collectd.conf
    - user: root
    - group: root
    - mode: 644
  cmd.wait:
    - name: service collectd restart
    - watch:
      - file: /etc/collectd/collectd.conf
