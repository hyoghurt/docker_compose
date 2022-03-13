FROM debian:buster

RUN apt-get update -y
RUN apt-get install -y nginx

COPY ./conf/default /etc/nginx/sites-available/default
COPY ./tools/my_cert.crt /etc/nginx/ssl/certs/my_cert.crt
COPY ./tools/my_key.key /etc/nginx/ssl/private/my_key.key

RUN chown -R www-data:www-data /var/www/
RUN chmod 600 /etc/nginx/ssl/private/my_key.key

EXPOSE 443

CMD /usr/sbin/nginx -g "daemon off;"
