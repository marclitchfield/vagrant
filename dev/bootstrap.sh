#!/usr/bin/env bash

apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update

apt-get install -y git

apt-get install -y docker.io
ln -sf /usr/bin/docker.io /usr/local/bin/docker
sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io
docker pull ubuntu

apt-get install -y ansible 

apt-get install -y nodejs
ln -sf /usr/bin/nodejs /usr/local/bin/node

apt-get install -y npm
npm config set prefix ~/npm
echo 'export PATH="$PATH:$HOME/npm/bin"' >> /home/vagrant/.bashrc
