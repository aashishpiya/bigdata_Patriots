#!bin/bash

## updates files/dependencies for python in ubuntu
sudo apt update
sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev

##create new directory
mkdir -p opt

##go in opt
cd opt/

##download python3.7
wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz


##unzip ## tar -zxvf filename
tar -xzvf Python-3.7.4.tgz

##remove the zip file 
rm Python-3.7.4.tgz

## go to the home directory
cd 



## you can do the above bash_profile without gedit by using echo 
echo "##PYTHON HOME##" >> ~/.bash_profile 
echo "PYTHON_HOME=/opt/Python-3.7.2" >> ~/.bash_profile
echo "export PATH=\$PATH:\$PYTHON_HOME/bin" >> ~/.bash_profile
echo " " >> ~/.bash_profile

## from home source bash_profile
source .bash_profile 
##source ~/.bash_profile if you are not in home directory


##which java to see the path to you python location
which python3.7

##check python version
python3.7 --version


