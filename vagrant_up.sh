# Tools
sudo apt-get -y install build-essential # g++, make, etc.
sudo apt-get -y install git 
sudo apt-get -y install x11-apps

# Python
sudo apt-get -y install python-setuptools
sudo apt-get -y install python3-pip

# Install Diamonds

# Normally, we'd do the folliowing:
# git clone diamonds.git
# cd Diamonds
# ./scripts/install.sh

cd /vagrant/
./scripts/install.sh

# Prefs
echo "cd /vagrant" | sudo tee -a ~vagrant/.profile