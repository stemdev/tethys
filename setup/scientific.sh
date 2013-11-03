#!/bin/bash

# Install numpy, matplotlib

# dependencies
#ATLAS (BLAS/LAPACK implementation)
sudo yum -y install atlas-sse3-devel.x86_64
#sudo yum -y install atlas.x86_64

#Fortran
sudo yum -y install gcc-gfortran.x86_64

#cython
wget http://cython.org/release/Cython-0.19.2.tar.gz
tar zxf Cython-*
cd Cython-*
sudo python3 setup.py install
cd ..
sudo rm -rf Cython-*

#nose (for testing numpy)
wget https://pypi.python.org/packages/source/n/nose/nose-1.3.0.tar.gz#md5=95d6d32b9d6b029c3c65674bd9e7eabe
tar zxf nose-*
cd nose-*
sudo python3 setup.py install
cd ..
sudo rm -rf nose-*

# latest numpy
git clone git://github.com/numpy/numpy.git numpy
cd numpy
sudo python3 setup.py build --fcompiler=gnu95
sudo python3 setup.py install
cd ..
sudo rm -rf numpy

# libpng
sudo yum -y install libpng-devel

# Freetype
sudo yum -y install freetype-devel

# matplotlib
wget https://downloads.sourceforge.net/project/matplotlib/matplotlib/matplotlib-1.3.1/matplotlib-1.3.1.tar.gz
tar zxf matplotlib-*
cd matplotlib-*
sudo python3 setup.py  build
sudo python3 setup.py  install
cd ..
sud rm -rf matplotlib-*


