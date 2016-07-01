openssh-server:
  pkg:
    - installed

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://sshd/sshd_config
    - user: root
    - group: root
    - mode: 644
  cmd.wait:
    - name: service ssh restart
    - watch:
      - file: /etc/ssh/sshd_config

