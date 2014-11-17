#!/usr/bin/env bash

apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get -y upgrade

# git
apt-get install -y git

# ssh
ssh-keygen -t rsa
eval `ssh-agent -s`
ssh-add

# java
apt-get install -y openjdk-7-jre-headless

# docker
apt-get install -y docker.io
ln -sf /usr/bin/docker.io /usr/local/bin/docker
sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io
docker pull ubuntu

# ansible
apt-get install -y ansible 

# ansible+docker
apt-get install -y python-pip
pip install docker-py


# node
apt-get install -y nodejs
ln -sf /usr/bin/nodejs /usr/local/bin/node

# npm
apt-get install -y npm

# setup code environment
cd /home/vagrant/src
git clone https://github.com/marclitchfield/thedebate-web.git
cd thedebate-web
git checkout development
chown -R vagrant:vagrant .

# install program-specific dependencies
npm run setup

# invoke user script as vagrant user
su vagrant -l -c '/vagrant/dev/user.sh'

