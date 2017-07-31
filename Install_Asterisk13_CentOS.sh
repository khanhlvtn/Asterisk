#!/bin/bash
#This is file install Asterisk 13 on CentOS 7. Please don't publish.
#Every opinion please sent to email: khanhlvtn291995@gmail.com! Thanks!!!
#Update OS
yum update -y
#Install Wget
yum install wget -y
#Download Asterisk 13
wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-13-current.tar.gz
#Extract downloads Asterisk 13
tar -zxvf asterisk-13-current.tar.gz
cd asterisk-13*
#Install someone package
yum install gcc gcc-c++ ncurses-devel uuid-devel libuuid-devel jansson-devel libxml2-devel sqlite-devel
#Checking Asterisk
./configure
#Choices modul	
make menuselect
#Start Install Asterisk
make
make install
make samples

 
