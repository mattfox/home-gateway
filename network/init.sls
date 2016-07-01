/etc/network/interfaces:
  file.managed:
    - source: salt://network/interfaces
    - user: root
    - group: root
    - mode: 644
