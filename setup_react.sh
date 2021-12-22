#!/bin/bash

# Script tested and designed for container gcr.io/google.com/cloudsdktool/cloud-sdk:latest  (currently Debian 10)

export NODE_VERS=v14.15.0    # this is the node version that will be downloaded

### Install node ${NODE_VERS}
apt-get install wget -y 
cd /opt
wget https://nodejs.org/dist/${NODE_VERS}/node-${NODE_VERS}-linux-x64.tar.xz
tar -xf node-${NODE_VERS}-linux-x64.tar.xz
cd node-${NODE_VERS}-linux-x64
cp -p bin/node /usr/local/bin/
node -v

### Install npm latest (currently 8.3.0)
cd /opt
curl -L https://www.npmjs.com/install.sh | sh
update-alternatives --install /usr/bin/npm npm /usr/local/lib/node_modules/npm/bin/npm-cli.js 1
update-alternatives --display npm
npm -v
