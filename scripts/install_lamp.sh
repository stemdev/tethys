#!/bin/bash

# Install Apache
sudo yum install httpd

# Install MySQL
sudo yum install mysql-server

# Set root password for MySQL
sudo /usr/bin/mysql_secure_installation

# Install PHP
sudo yum install php php-mysql

# Set processes to run automatically when the server starts
sudo chkconfig httpd on
sudo chkconfig mysqld on

# Start Apache and MySQL
sudo service httpd start
sudo service mysqld start
