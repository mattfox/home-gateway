iptables:
  pkg:
    - installed

/etc/init.d/firewall:
  file.managed:
    - source: salt://firewall/init-firewall
    - user: root
    - group: root
    - mode: 755
  cmd.wait:
    - name: /sbin/insserv /etc/init.d/firewall
    - watch:
      - file: /etc/init.d/firewall
