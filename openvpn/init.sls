openvpn:
  pkg:
    - installed

/etc/openvpn/www101.conf:
  file.managed:
    - source: salt://openvpn/www101.conf
    - user: root
    - group: root
    - mode: 644
  cmd.wait:
    - name: service openvpn restart
    - watch:
      - file: /etc/openvpn/www101.conf
