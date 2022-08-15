#!/bin/bash

echo "Updating server..."

apt-get update
apt-get upgrade -y

echo "Installing packages..."

apt-get install apache2 unzip -y

cd /tmp

echo "Getting sample files..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Copying files to Apache directory..."

cp -R * /var/www/html/

echo "Operation complete."