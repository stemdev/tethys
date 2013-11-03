#!/bin/bash

# latest from python.org
wget http://www.python.org/ftp/python/3.3.2/Python-3.3.2.tar.bz2

# unpack tarball
tar jxvf Python-3.3.2.tar.bz2
cd Python-3.*

# install
./configure
make
sudo make install

# clean up
cd ..
sudo rm -rf Python-3*
