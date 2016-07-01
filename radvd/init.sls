radvd:
  pkg:
    - installed

/etc/radvd.conf:
  file.managed:
    - source: salt://radvd/radvd.conf
    - user: root
    - group: root
    - mode: 644
  cmd.wait:
    - name: service radvd restart
    - watch:
      - file: /etc/radvd.conf
