#!/bin/bash

mysqlTempPass="SampleDBPassword"

# OS
sudo apt-get update

# Tools
sudo apt-get -y install build-essential # g++, make, etc.
sudo apt-get -y install git
sudo apt-get -y install x11-apps

# Apache, PHP, MySQL
sudo apt-get -y install apache2
sudo apt-get -y install php5 libapache2-mod-php5
sudo DEBIAN_FRONTEND=noninteractive apt-get -q -y install mysql-server
sudo apt-get -y install libapache2-mod-auth-mysql php5-mysql
sudo apt-get -y install curl libcurl3 libcurl3-dev php5-curl

# Set MySQL root password
mysqladmin -u root password $mysqlTempPass

# Flag our Apache Modules
sudo a2enmod proxy_http
sudo a2enmod rewrite
sudo a2enmod php5

# Restart services
sudo service apache2 restart
sudo service mysql restart

# Set user settings and install sample file
if [[ $curUser=="vagrant" ]] ; then
    cd /vagrant
    echo "cd /vagrant" | sudo tee -a ~vagrant/.profile
    sudo php ./scripts/updateApacheConfig.php -vagrant
else
    echo "cd /var/www" | sudo tee -a ~/.profile

    # Copy everything to apaches new root
    sudo cp -r . /var/www/
    cd /var/www

    sudo php ./scripts/updateApacheConfig.php
fi


echo "Installed Apache, MySQL, and PHP"

