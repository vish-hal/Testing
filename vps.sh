#!/bin/bash

# xrdpinstallation 

sudo apt-get update && upgrade 
echo "system is updated "
sudo apt-get -y install xfce4;
echo "Installed xfce4"
sudo apt-get -y install xrdp
sudo systemctl enable xrdp
echo xfce4-session >~/.xsession
sudo service xrdp restart

# essentials softwares

echo "let's install essential tools"
sudo apt-get -y update 
sudo apt-get -y upgrade 
sudo apt install python3
sudo apt-get install -y cargo
sudo apt-get install libpcap-dev 
sudo apt install python3-pip
sudo apt install git
pip install jsbeautifier 
sudo apt install snapd
sudo snap install go --classic
echo 'export PATH=/snap/bin ' >> ~/.bashrc ;
echo 'export GOPATH=$HOME/go ; ' >> ~/.bashrc 
echo 'export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin ;' >> ~/.bashrc
source ~/.bashrc


echo "Installing basic usage tools"

sudo apt-get -y install gedit
echo "Gedit installed"
sudo apt-get install firefox
echo "Firefox installed"
sudo snap install chromium
echo "Chromium installed"
sudo apt-get install tmux
echo "tmux installed"
sudo apt-get install -y ristretto
echo "ristretto installed"

echo "Installing basic webtesting  usage tools"

cd ~
mkdir Tools
cd Tools
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder; 
GO111MODULE=on go get -v github.com/projectdiscovery/dnsx/cmd/dnsx ;
GO111MODULE=on go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei;
nuclei -ut;
GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx; 
go get github.com/tomnomnom/hacks/waybackurls; 
GO111MODULE=on go get -u -v github.com/lc/gau; 
GO111MODULE=on go get -v github.com/projectdiscovery/naabu/v2/cmd/naabu; 
go get github.com/michenriksen/aquatone 
go get github.com/hakluke/hakrawler; 
go get -u github.com/ffuf/ffuf; 
git clone https://github.com/maurosoria/dirsearch
pip3 install -r dirsearch/requirements.txt; 
go get -v github.com/OWASP/Amass/v3/...; 
GO111MODULE=on go get -u -v github.com/hahwul/dalfox; 
git clone https://github.com/findomain/findomain.git
cd findomain
cargo build --release
sudo cp target/release/findomain /usr/bin/; 
cd .. 
pip3 install arjun;  
git clone https://github.com/GerbenJavado/LinkFinder; 
git clone https://github.com/m4ll0k/SecretFinder; 
git clone https://github.com/devanshbatham/ParamSpider; 
git clone https://github.com/s0md3v/Corsy.git; 
git clone https://github.com/hisxo/gitGraber.git;
git clone https://github.com/lobuhi/byp4xx.git; 
go get github.com/haccer/subjack; 

#Bug bounty tools
cd ~
git clone https://github.com/six2dez/reconftw
echo "Installing Reconftw"
cd reconftw/
./install.sh

#Wordlist Download

echo "Now it's time to install Wordlists"
mkdir ~/Tools/Wordlists
cd ~/Tools/Wordlists
echo "Cloning Seclist"
git clone https://github.com/danielmiessler/SecLists
echo "clonining KaliList"
git clone https://github.com/3ndG4me/KaliLists.git
echo"Fuzz db wordlist is being cloned"
git clone https://github.com/fuzzdb-project/fuzzdb
echo "cloning Super Wordlist"
git clone https://github.com/fuzz-security/SuperWordlist
echo "Cloning Bug bounty Wordlists"
git clone https://github.com/Karanxa/Bug-Bounty-Wordlists
echo "Cloning Onelist for All Six2dez"
git clone https://github.com/six2dez/OneListForAll

#Alias to make my work easy

echo 'alias install=sudo apt-get install ' >> ~/.bashrc
echo 'alias apt-get='sudo apt-get' ' >> ~/.bashrc
echo "alias c='clear' ">> ~/.bashrc
echo "alias ls='ls --color=auto' " >>~/.bashrc
echo "alias ll='ls -la --color=auto' " >>~/.bashrc
echo "alias l.='ls -d .* --color=auto' " >>~/.bashrc
echo "alias ..='cd ..' " >>~/.bashrc
echo "alias ...='cd ../../../' " >>~/.bashrc
echo "alias ....='cd ../../../../' " >>~/.bashrc
echo "alias .....='cd ../../../../' " >>~/.bashrc
echo "alias .2='cd ../..' " >>~/.bashrc
echo "alias .3='cd ../../..' " >>~/.bashrc
echo "alias .4='cd ../../../../' " >>~/.bashrc
echo "alias .5='cd ../../../../..' " >>~/.bashrc
echo "alias grep='grep --color=auto' " >>~/.bashrc
echo "alias egrep='egrep --color=auto' " >>~/.bashrc
echo "alias fgrep='fgrep --color=auto' " >>~/.bashrc
echo "alias mkdir='mkdir -pv' " >>~/.bashrc
echo "alias h='history' " >>~/.bashrc
echo "alias j='jobs -l' " >>~/.bashrc
echo "alias vi=vim " >>~/.bashrc
echo "alias svi='sudo vi' " >>~/.bashrc

#bugbounty alias

echo "alias sf='subfinder'" >>~/.bashrc
echo "alias nuc='nuclei'">>~/.bashrc
echo "alias df='dalfox'" >> ~/.bashrc



