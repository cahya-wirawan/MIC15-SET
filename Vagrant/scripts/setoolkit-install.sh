#!/bin/sh

if [ ! -d /usr/share/setoolkit ]; then
  cd /opt
  git clone https://github.com/trustedsec/social-engineer-toolkit.git social-engineer-toolkit
  cd social-engineer-toolkit
  python setup.py install
  sed -i 's/METASPLOIT_PATH=.*/METASPLOIT_PATH=\/opt\/metasploit/' /etc/setoolkit/set.config
fi