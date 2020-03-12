#!bin/bash
## Steps to install scala

## updates files/dependencies in ubuntu
sudo apt update


##create new directory
mkdir -p opt

##go in opt
cd opt/


##dowload the gz file for scala 2.11.8 from https://github.com/scala/scala/archive/v2.11.8.tar.gz
wget https://github.com/scala/scala/archive/v2.11.8.tar.gz

##unpack the gz folder 
tar -xzvf v2.11.8.tar.gz

##remove the gz file 
rm v2.11.8.tar.gz


## go to the home directory
cd 



## you can do the above bash_profile without gedit by using echo 
echo "##Scala HOME##" >> ~/.bash_profile 
echo "SCALA_HOME=/opt/scala-2.11.8" >> ~/.bash_profile
echo "export PATH=\$PATH:\$SCALA_HOME/bin" >> ~/.bash_profile
echo " " >> ~/.bash_profile

## from home source bash_profile
source .bash_profile 
##source ~/.bash_profile if you are not in home directory


##which scala to see the path to you java location
which scala


##check scala version
scala - version




