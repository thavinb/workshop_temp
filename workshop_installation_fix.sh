#!/bin/bash

sudo apt install build-essentials ssh filtlong zlib1g-dev 

pip install numpy scipy matplotlib scikit-learn pandas jinja2 h5py nanopack

git clone https://github.com/yfukasawa/LongQC.git
cd LongQC/minimap2-coverage && make
cd 
echo "alias longQC='python ~/LongQC/longQC.py'" >> ~/.bashrc

mkdir chopper && cd chopper
wget https://github.com/wdecoster/chopper/releases/download/v0.1.0/chopper-linux.zip
unzip chopper-linux.zip
chmod +x chopper

#git clone https://github.com/rrwick/Filtlong.git
#cd Filtlong
#make -j\
#bin/filtlong -h

cd 
mkdir CONSENT && cd CONSENT
wget https://github.com/morispi/CONSENT/releases/download/v2.2.2/CONSENT.tar.gz
tar xvzf CONSENT.tar.gz
rm CONSENT.tar.gz
echo 'export PATH="~/CONSENT/:$PATH"' >> ~/.bashrc