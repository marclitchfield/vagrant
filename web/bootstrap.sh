#!/usr/bin/env bash

apt-get update
apt-get install -y git

apt-get install -y docker.io
ln -sf /usr/bin/docker.io /usr/local/bin/docker
sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io
docker pull ubuntu

apt-get install -y nginx
