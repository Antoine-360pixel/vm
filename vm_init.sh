#!/bin/bash

apt-get update
apt-get -y upgrade
# problem upgrade > Y to continue (no y)

# Init
apt-get --purge remove node
apt-get --purge remove nodejs
apt-get -y install nodejs npm ruby rubygems git

ln -s /usr/bin/nodejs /usr/bin/node

# Tools
add-apt-repository ppa:webupd8team/sublime-text-3
apt-get -y install sublime-text-installer terminator git-cola diffmerge

# Npm Libs
npm install -g grunt-cli
npm install -g bower
npm install -g yeoman

# Mrt install
apt-get -y install curl
curl https://install.meteor.com | sh
npm -y install -g meteorite

# Gem Libs
gem install sass
gem update --system
gem install compass --pre

# Add yo generators
npm install -g generator-webapp
