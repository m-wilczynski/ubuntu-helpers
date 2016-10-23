#!/bin/bash

code=false

# Parse flags
while getopts 'c' flag; do
  case "${flag}" in
    c) code=true ;;
    *) error "Unexpected option ${flag}" ;;
  esac
done

# Update OS
sudo apt-get -y update

# Curl install/update
sudo apt-get -y install curl
sudo apt-get -y install libcurl3

# Git
sudo apt-get -y install git

# ZLib and other essentials
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev

# Get public key for RVM
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# RVM for managing Ruby -v
curl -sSL https://get.rvm.io | bash -s stable

# Source RVM in this script
source "/usr/local/rvm/scripts/rvm"

# Point to RVM for single-user shell
echo '[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm"' >> ~/.bash_profile

# Point to RVM for non-login shell
echo "source /usr/local/rvm/scripts/rvm" >> ~/.bashrc

# Ruby 2.3.0
rvm install 2.3.0
rvm use 2.3.0
rvm rubygems latest
ruby --version

# Ruby bundler
gem install bundler

# Ruby debugging
gem install ruby-debug-ide --platform=ruby --pre

# Ruby test-unit
gem install test-unit-full

# Node.js and npm
sudo curl --silent --location https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get -y install nodejs

# Ruby On Rails
gem install rails

# VS Code (optional)
if [ "$code" = true ] ; then   
    wget -O ~/Downloads/vscode-amd64.deb "https://go.microsoft.com/fwlink/?LinkID=760868"
    sudo dpkg -i ~/Downloads/vscode-amd64.deb
fi