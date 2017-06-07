#!/bin/sh

# For ubuntu. You'll need Yakkety 16.10, Xenial 16.04 (LTS) or Trusty 14.04 (LTS)

# Remove old docker
sudo apt-get remove -y docker docker-engine

# Update package index
sudo apt-get update

# Install extra packages
sudo apt-get -y install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual


# Install packages to allow apt to use a repository over https
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add dockers official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add repository (amd64)
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update package index again
sudo apt-get update

# Install docker
sudo apt-get install -y docker-ce
