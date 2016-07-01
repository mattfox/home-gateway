router-packages:
  pkg.installed:
    - pkgs:
      - vnstat
      - tcpdump
      - bwm-ng
      - conntrack

/etc/sysctl.d/router.conf:
  file.managed:
    - source: salt://router/sysctl-router.conf
    - user: root
    - group: root
    - mode: 644
