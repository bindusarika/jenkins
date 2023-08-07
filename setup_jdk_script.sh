#!/bin/sh
#set variables for JDK installation
JDK_TAR_FILE="/home/sarika/Downloads/jdk-17_linux-x64_bin.tar.gz"
JDK_INSTALL_DIR="/opt/jdk"

#Extract JDK tar.gz files
tar -xvf $JDK_TAR_FILE -C $JDK_INSTALL_DIR --strip-components=1

#set up JDK environment in .bashrc
echo "export JAVA_HOME=$JDK_INSTALL_DIR" >> ~/.bashrc
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.bashrc



