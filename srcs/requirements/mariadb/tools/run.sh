#!/bin/sh

if ! [ -d /var/lib/mysql/wordpress ] ; then

service mysql start

mysql -u root -e "CREATE DATABASE ${MYSQL_DATABASE}"
mysql -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO '${MYSQL_USER}'@'%'"
mysql -u root -e "FLUSH PRIVILEGES"

mysql -u root wordpress < ./wordpress.sql
rm -rf ./wordpress.sql

mysqladmin -u root password ${MYSQL_PASSWORD}

service mysql stop

fi

mysqld
