#!/bin/bash

sudo pip3 install -r requirements.txt


#latex
sudo apt-get -y --no-install-recommends install texlive-latex-base
sudo apt-get -y --no-install-recommends install texlive-latex-extra
sudo apt-get -y install dvipng

#set config
if [ ! -f "/etc/texmf/texmf.d/00debian.cnf" ]; then
    sudo update-texmf -v
fi

#tell TeX to look in Diamonds reseources for .fmt files, and where to find cross image
cat config/texmfcustom.cnf | sudo tee -a /etc/texmf/texmf.d/00debian.cnf
sudo update-texmf -v
export TEXINPUTS=:/vagrant/html/application/libraries/Diamonds/diamonds/payloads/resources/:


#numpy
sudo apt-get -y install python3-dev
sudo apt-get -y install gfortran
sudo apt-get -y install python3-nose
sudo apt-get -y install python3-numpy

#matplotlib
sudo apt-get -y install python3-matplotlib

#sympy
wget https://pypi.python.org/packages/source/s/sympy/sympy-0.7.3-py3.3.tar.gz#md5=46132548644c97034899c1a739d06127
tar xzf sympy-*
cd sympy-*
sudo python3 setup.py install
cd ..
sudo rm -rf sympy-*


