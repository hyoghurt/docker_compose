FROM debian:buster

RUN mkdir -p /run/php
RUN mkdir -p /var/www/html

RUN apt-get update -y
RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql php7.3-mbstring php-redis wget

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN rm -rf latest.tar.gz
RUN mv wordpress/* /var/www/html

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./conf/wp-config.php /var/www/html
COPY ./tools/object-cache.php /var/www/html/wp-content/

RUN chown -R www-data:www-data /run/php/
RUN chown -R www-data:www-data /var/www/

EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.3", "-F"]
