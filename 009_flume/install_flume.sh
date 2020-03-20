cd opt/
ls
wget http://archive.archive.apache.org/dist/flume/stable/apache-flume-1.9.0-bin.tar.gz
tar -xzvf apache-flume-1.9.0-bin.tar.gz 
rm apache-flume-1.9.0-bin.tar.gz 
ls


##open .bash_profile
##FLUME HOME##
export FLUME_HOME=/home/ap/opt/apache-flume-1.9.0-bin
export PATH=$PATH:$FLUME_HOME/bin
 
source .bash_profile

cd 
#flume-ng -help

#flume-ng version 



