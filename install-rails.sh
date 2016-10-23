#!/bin/sh

code=false

# Parse flags
while getopts 'c' flag; do
  case "${flag}" in
    c) code=true ;;
    *) error "Unexpected option ${flag}" ;;
  esac
done

# Git
sudo apt-get -y install git

# ZLib and other essentials
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev

# Get public key for RVM
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# RVM for managing Ruby -v
curl -sSL https://get.rvm.io | bash -s stable --ruby

# Register loading RVM in bash shell
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~./bashrc
source ~/.bashrc 

# Get stable RVM
rvm get stable

# Ruby 2.0.0
/bin/bash --login
rvm install 2.0.0
rvm use 2.0.0
rvm rubygems latest
ruby --version

# Ruby bundler
sudo gem install bundler

# Ruby debugging
sudo gem install ruby-debug-ide --platform=ruby --pre

# Ruby test-unit
sudo gem install test-unit-full

# Node.js and npm
sudo apt-get -y install curl
sudo curl --silent --location https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get -y install nodejs

# Ruby On Rails
sudo gem install rails -v 4.2.6

# VS Code (optional)
if [ "$code" = true ] ; then
then    
    wget -O ~/Downloads/vscode-amd64.deb "https://go.microsoft.com/fwlink/?LinkID=760868"
    sudo dpkg -i ~/Downloads/vscode-amd64.deb
fi