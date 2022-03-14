FROM debian:buster

RUN apt-get update -y
RUN apt-get install -y mariadb-server

COPY ./tools/run.sh /usr/local/bin/
COPY ./tools/wordpress.sql ./
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod 700 /usr/local/bin/run.sh
RUN chmod 644 /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir -p /var/run/mysqld
RUN mkdir -p /var/lib/mysqld

RUN chown -R mysql:mysql /var/run/mysqld
RUN chown -R mysql:mysql /var/lib/mysqld

EXPOSE 3306

CMD ["run.sh"]
