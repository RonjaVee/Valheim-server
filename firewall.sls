# firewall.sls

allow_ssh:
  ufw.allow:
    - name: 22

allow_valheim_ports:
  ufw.allow:
    - name: 2456
    - name: 2457

enable_firewall:
  ufw.enable: []