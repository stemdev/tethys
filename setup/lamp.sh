#!/bin/bash

# Install Apache
sudo yum -y install httpd.x86_64

# Install MySQL
sudo yum -y install mysql-server.x86_64

# Install PHP
sudo yum -y install php.x86_64
sudo yum -y install php-mysql.x86_64

# Set processes to run automatically when the server starts
sudo chkconfig httpd on
sudo chkconfig mysqld on

# Start Apache and MySQL
sudo service httpd start
sudo service mysqld start

# Set root password for MySQL
sudo /usr/bin/mysqladmin -u root password 'SampleDBPassword'
