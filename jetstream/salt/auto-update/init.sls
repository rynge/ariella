/usr/libexec/auto-update:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/usr/libexec/auto-update/auto-update.sh:
  file.managed:
    - user: root
    - group: root
    - mode: 755
    - template: jinja
    - source: salt://auto-update/auto-update.sh

/etc/cron.d/ariella-auto-update:
  file.managed:
    - source: salt://auto-update/cron.auto-update
    - user: root
    - group: root
    - mode: 644
    - template: jinja


