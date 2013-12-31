#!/bin/bash

user=$(whoami)

echo "Setting Permissions"

if [[ $user=="vagrant" ]] ; then
	# Allow Apache to be run as vagrant
	sudo chown -R vagrant:www-data /var/lock/apache2
fi

#sudo adduser $USER www-data
sudo chown -R www-data:www-data ./html/

sudo chmod -R 0777 ./html/*

echo "Permissions Set"
