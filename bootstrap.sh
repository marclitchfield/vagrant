#!/usr/bin/env bash

apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install -y git

sudo apt-get install docker.io
sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
sudo sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io

apt-get install -y ansible 
