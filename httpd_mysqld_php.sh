#!/bin/bash
#This is file install PHP - APACHE - MYSQL(mariadb) on CentOS 7
#Every opinion please sent to email: khanhlvtn291995@gmail.com! Thanks!!!

#Update OS
yum update -y
yum install wget -y
#Install APACHE
yum install httpd -y
systemctl enable httpd
systemctl start httpd
#Install PHP 5.6
yum -y install epel-release
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
wget https://centos7.iuscommunity.org/ius-release.rpm
rpm -Uvh ius-release*.rpm
yum -y update
yum -y install php56u php56u-opcache php56u-xml php56u-mcrypt php56u-gd php56u-devel php56u-mysql php56u-intl php56u-mbstring php56u-bcmath
#Install MYSQL(mariadb)
yum -y install lynx mariadb-server mariadb
systemctl enable mariadb.service
systemctl start mariadb
mysql_secure_installation
#Done
reboot
