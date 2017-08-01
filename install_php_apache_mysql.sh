#!/bin/bash
#This is file install PHP 5.6 - APACHE - MARIADB
#A few package
yum install epel* -y
yum update -y
yum install wget -y
#Install Apache
yum install httpd -y
service httpd start
chkconfig httpd on
iptables -I INPUT -p tcp --dport 80 -j ACCEPT
#Install php56
yum install -y php php-mysql php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml
wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm 
rpm -Uvh remi-release-6*.rpm
yum update -y
yum --enablerepo=remi,remi-php56 update -y
yum --enablerepo=remi,remi-php56 upgrade -y
#Install MYSQL
yum install mysql-server -y
service mysqld start
chkconfig mysqld on
mysql_secure_installation
