FROM debian:buster

RUN apt-get update -y
RUN apt-get install -y php7.3 php7.3-common php7.3-readline php7.3-fpm

RUN apt-get update -y
RUN apt-get install -y php7.3-json php7.3-mysql php7.3-pgsql php7.3-sqlite3 php7.3-mbstring

RUN apt-get update -y
RUN apt-get install -y nginx wget

RUN apt-get update -y
RUN apt-get install -y supervisor

RUN rm -rf /var/www/html

COPY ./conf/default /etc/nginx/sites-available/default
COPY ./conf/supervisord.conf /etc/supervisor/supervisord.conf
COPY ./tools/index.php /var/www/html/

RUN mkdir -p /run/php
RUN mkdir -p /var/www/html

RUN chown -R www-data:www-data /var/www/
RUN chown -R www-data:www-data /run/php/

EXPOSE 80

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
