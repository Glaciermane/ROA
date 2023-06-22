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

# Installruby
echo "screen installation..."
yum install -y screen
check_status $?




echo "Installations complete."
