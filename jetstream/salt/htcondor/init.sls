
condor:
  pkg: 
    - installed
    - require:
      - file: /etc/yum.repos.d/pegasus.repo
  service.running:
    - enable: True
    - watch:
      - file: /etc/condor/pool_password
      - file: /etc/condor/config.d/10-main.conf


/etc/condor/pool_password:
  file:
    - managed
    - user: root
    - mode: 600
    - source: salt://htcondor/pool_password

/etc/condor/config.d/10-main.conf:
  file:
    - managed
    - source: salt://htcondor/10-main.conf

/usr/libexec/osgvo:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/usr/libexec/osgvo/osgvo-node-advertise:
  file:
    - managed
    - source: salt://htcondor/osgvo-node-advertise
    - mode: 755

/usr/libexec/osgvo/user-job-wrapper.sh:
  file:
    - managed
    - source: salt://htcondor/user-job-wrapper.sh
    - mode: 755

/etc/condor/master_shutdown_script.sh:
  file:
    - managed
    - mode: 755
    - source: salt://htcondor/master_shutdown_script.sh




