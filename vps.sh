#!/bin/bash

sudo apt-get update && upgrade ;
sudo apt-get -y install xfce4;
sudo apt-get -y install xrdp;
sudo systemctl enable xrdp;
echo xfce4-session >~/.xsession;
sudo service xrdp restart;
sudo apt-get install gedit;
Sudo apt-get install firefox;
sudo apt-get install chromium;
sudo apt-get install tmux;
sudo apt-get insall -y ristretto;
sudo apt-get install -y qterm;
git clone https://github.com/six2dez/reconftw
cd reconftw/
./install.sh

