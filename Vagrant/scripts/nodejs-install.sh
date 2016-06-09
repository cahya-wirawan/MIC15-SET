#!/bin/bash

FILENAME=/tmp/nvm-install-`date +%H%M%S`.sh

cat > $FILENAME <<SCRIPT
NVM_DIR="\${HOME}/.nvm"
cd \${HOME}
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash
source "\${NVM_DIR}/nvm.sh"
nvm install 5
SCRIPT

chmod 755 $FILENAME
sudo -u set -i $FILENAME

