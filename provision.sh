#!/usr/bin/env bash

echo "--- Let's get to work. Installing now. ---"

echo "--- Updating packages list ---"
sudo apt-get update

echo "--- Installing base packages ---"
sudo apt-get install -y vim curl python-software-properties

echo "--- Installing NodeJS ---"
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

npm install -g create-react-app

sudo locale-gen en_CA.UTF-8

echo "--- Donzo! ---"