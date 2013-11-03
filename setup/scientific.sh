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
tar zxvf Cython-*
cd Cython-*
sudo python3 setup.py install
cd ..
sudo rm -rf Cython-*

# latest numpy
git clone git://github.com/numpy/numpy.git numpy
cd numpy
sudo python3 setup.py build --fcompiler=gnu95
cd ..
sudo rm -rf numpy
