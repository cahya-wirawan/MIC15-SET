#!/bin/sh

if [ ! -d /opt/social-engineer-toolkit ]; then
  cd /opt
  git clone https://github.com/trustedsec/social-engineer-toolkit.git social-engineer-toolkit
  cd social-engineer-toolkit
  python setup.py install
fi