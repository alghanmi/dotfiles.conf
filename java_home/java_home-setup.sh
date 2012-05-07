#!/bin/bash

##
## Java Setup
##	This script assumes that you have java installed
##	You should run:
##		sudo update-alternatives --config java
##

#Find JAVA_HOME location
JAVA_HOME_LOC=$(readlink -f /usr/bin/java | sed "s:bin/java::")

#Set env variables
echo "" >> ~/.bashrc
echo "##Java Setup" >> ~/.bashrc
echo "export JAVA_HOME=$JAVA_HOME_LOC" >> ~/.bashrc
echo "export CLASSPATH=." >> ~/.bashrc
echo "PATH=$PATH:$JAVA_HOME/bin" >> ~/.bashrc

## TODO: Add a directory for java libraries to include in classpath
