# TODO: consider combining router, dnsmasq, and radvd

base:
  '*':
    - common
    - macbook1-1/
    - router
    - firewall
    - network
    - dnsmasq
    - radvd
    - sshd
    - collectd
    - openvpn
    - nginx
