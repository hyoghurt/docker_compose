#!/bin/sh

#while [ -e ./create_user.sql ]
#do

mysqld --skip-networking --skip-log-bin --socket="/var/run/mysqld/mysqld.sock" &

#mysql -u root -e "CREATE DATABASE ${MYSQL_DATABASE}" &
#mysql -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'" &
#mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO '${MYSQL_USER}'@'%'" &
#mysql -u root -e "FLUSH PRIVILEGES" &
#rm -rf ./create_user.sql &
#mysql -u root wordpress < wordpress.sql
#rm -rf ./wordpress.sql
sleep 2
mysqladmin shutdown -uroot --socket="/var/run/mysqld/mysqld.sock"

#done
