#!/bin/sh

version=$(lsb_release --release | cut -f2)
lts14="14.04"
lts16="16.04"

# .NET Core
if [ "$version" = "$lts14" ]
then
    sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet/ trusty main" > /etc/apt/sources.list.d/dotnetdev.list'
elif [ "$version" = "$lts16" ]
then
    sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
fi

sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
sudo apt-get -y update
sudo apt-get -y install dotnet-dev-1.0.0-preview2-003121

# Node.js and npm
sudo apt-get -y install curl
sudo curl --silent --location https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get -y install nodejs

# Yeoman
sudo npm install -g yo
sudo npm install -g generator-aspnet

# VS Code
wget -O ~/Downloads/vscode-amd64.deb "https://go.microsoft.com/fwlink/?LinkID=760868"
sudo dpkg -i ~/Downloads/vscode-amd64.deb