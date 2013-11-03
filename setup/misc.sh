#!/bin/bash

# Make vagrant automatically go to /vagrant when we ssh in.
echo "cd /vagrant" | sudo tee -a ~vagrant/.profile

# Create a PHP Info Page
echo "<?PHP phpinfo();" | sudo tee -a /var/www/html/info.php