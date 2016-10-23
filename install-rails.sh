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

# Ruby
sudo apt-get -y install ruby

# Ruby for developers
sudo apt-get -y install ruby-dev

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