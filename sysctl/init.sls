/etc/sysctl.d/router.conf:
  file.managed:
    - source: salt://sysctl/router.conf
    - user: root
    - group: root
    - mode: 644
