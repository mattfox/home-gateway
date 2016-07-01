macbook1-1-packages:
  pkg.installed:
    - pkgs:
      - firmware-linux-nonfree
      - pommed
      - hddtemp
      - lm-sensors

/etc/default/hddtemp:
  file.managed:
    - source: salt://macbook1-1/default-hddtemp
    - user: root
    - group: root
    - mode: 644
  cmd.wait:
    - name: service hddtemp restart
    - watch:
      - file: /etc/default/hddtemp

/etc/init.d/macbook:
  file.managed:
    - source: salt://macbook1-1/init-macbook
    - user: root
    - group: root
    - mode: 755
  cmd.wait:
    - name: /sbin/insserv /etc/init.d/macbook
    - watch:
      - file: /etc/init.d/macbook
