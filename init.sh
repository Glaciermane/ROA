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
echo "Nodejd installation..."
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
echo "Spyware installation..."
git clone https://github.com/MinhasKamal/TrojanCockroach.git
check_status $?

#paping
echo "Paping installation..."
sudo yum install epel-release
sudo yum update
sudo yum install paping
paping google.com
check_status $?


echo "Installations complete."
