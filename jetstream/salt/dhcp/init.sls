/etc/dhcp/dhclient-exit-hooks:
  file:
    - managed
    - source: salt://dhcp/dhclient-exit-hooks
    - user: root
    - group: root
    - mode: 755

