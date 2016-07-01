dnsmasq:
  pkg:
    - installed

/etc/dnsmasq.conf:
  file.managed:
    - source: salt://dnsmasq/dnsmasq.conf
    - user: root
    - group: root
    - mode: 644
  cmd.wait:
    - name: service dnsmasq restart
    - watch:
      - file: /etc/dnsmasq.conf
