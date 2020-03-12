#!bin/bash
## Steps to install Java 8 

## updates files/dependencies in ubuntu
sudo apt update


##create new directory
mkdir opt

##go in opt
cd opt/

##download java
## Linux x86 Compressed Archive ##login oracle ## downlaod
wget -O jdk-8u221-linux-x64.tar.gz \
-c --content-disposition \
"https://javadl.oracle.com/webapps/download/AutoDL?BundleId=239835_230deb18db3e4014bb8e3e8324f81b43"

##unzip ## tar -zxvf filename
tar -xzvf jdk-8u221-linux-x64.tar.gz

##remove the zip file jdk-8u221-linux-x64.tar.gz
rm jdk-8u221-linux-x64.tar.gz

## go to the home directory
cd 

##create a bash_profile for you java path
##sudo gedit .bash_profile
## inside the bash_profile
## Set up JAVA_HOME ##
##JAVA_HOME=/opt/jdk1.8.0_221
##export PATH=$PATH:$JAVA_HOME/bin


## you can do the above bash_profile without gedit by using echo 
echo "##JAVA HOME##" >> ~/.bash_profile 
echo "JAVA_HOME=/opt/jdk1.8.0_221" >> ~/.bash_profile
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bash_profile
echo " " >> ~/.bash_profile

## from home source bash_profile
source .bash_profile 
##source ~/.bash_profile if you are not in home directory


##which java to see the path to you java location
which java
##it should show this:   /usr/bin/java

##check java version
java - version
## it should show this: 
##java version "1.8.0_221"
##Java(TM) SE Runtime Environment (build 1.8.0_221-b11)
##Java HotSpot(TM) 64-Bit Server VM (build 25.221-b11, mixed mode)




