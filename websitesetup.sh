#!/bin/bash
sudo yum install wget unzip httpd -y 
systemctl start httpd
systemctl enable httpd
mkdir -p /tmp/webfiles
cd /tmp/webfiles
wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
unzip 2137_barista_cafe
sudo cp -r 2137_barista_cafe/* /var/www/html/
systemctl restart httpd
rm -f /tmp/webfiles
sudo systemctl status httpd
ls /var/www/html/
