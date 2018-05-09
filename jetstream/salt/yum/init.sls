
epel-release:
  pkg:
    - installed

/etc/yum.repos.d/osg.repo:
  file:
    - managed
    - source: salt://yum/osg.repo
    - require:
      - pkg: epel-release

/etc/yum.repos.d/pegasus.repo:
  file:
    - managed
    - source: salt://yum/pegasus.repo
  
osg-oasis:
  pkg:
    - installed
    - require:
      - file: /etc/yum.repos.d/osg.repo

osg-wn-client:
  pkg:
    - installed

osg-ca-certs:
  pkg:
    - installed

pegasus:
  pkg:
    - installed
    - require:
      - file: /etc/yum.repos.d/pegasus.repo

# no need for fetch crl anymore - comes in over cvmfs
fetch-crl-boot:
  service.running:
    - enable: False

fetch-crl-cron:
  service.running:
    - enable: False

