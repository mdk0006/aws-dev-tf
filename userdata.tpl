#! /bin/bash
sudo apt-get update -y &&
sudo apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common &&
curl -fsSL get.docker.com  -o get-docker.sh && 
sh get-docker.sh &&
sudo usermod -aG docker ubuntu &&
sudo chmod 666 /var/run/docker.sock