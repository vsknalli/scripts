#!/bin/bash
# Variable declarations
PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2109_the_card.zip"
ART_NAME="2109_the_card"
TEMPDIR=/tmp/webfiles

# Installing Packages and Dependencies
echo "####################################################"
echo "Installing Packages and dependencies"
echo "####################################################"
sudo yum install $PACKAGE -Y
echo "####################################################"

# Start and enable services
echo "####################################################"
echo " Start and enable services
echo "####################################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC 

# Creating Temp directory & Copy the Artifactory
echo "####################################################"
echo "Creating Tem directory and Artifactory"
echo "####################################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo 
wget $URL
unzip $2109_the_card.zip 
sudo cp -r $ART_NAME/* /var/www/html 
echo 

# Bounce the service 
cho "####################################################"
echo "Bounce the service"
echo "####################################################"
systemctl restart $SVC
echo 

# Clean up the Directory
echo "####################################################"
echo "Removing and cletn up the directory
echo "####################################################"
rm -rf $TEMPDIR
echo




