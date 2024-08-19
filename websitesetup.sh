#!/bin/bash

### Using Variable
PACKAGE=wget unzip httpd
SVC=httpd
TMPDIR=/tmp/webfiles
URL=https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
ART_NAME=2137_barista_cafe

sudo yum install $PACKAGE -y 
systemctl start $SVC
systemctl enable $SVC
mkdir -p $TMPDIR
cd $TMPDIR
wget $URL
unzip $ART_NAME.zip
sudo cp -r $ART_NAME/* /var/www/html/
systemctl restart $SVC
rm -f $TMPDIR
sudo systemctl status $SVC
ls /var/www/html/
