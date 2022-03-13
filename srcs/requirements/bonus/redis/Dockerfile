FROM debian:buster

RUN mkdir /run/redis

RUN apt-get update -y
RUN apt-get install -y redis-server

COPY ./conf/redis.conf /etc/redis/redis.conf

RUN chown -R redis:redis /run/redis/

EXPOSE 6379

CMD ["redis-server", "/etc/redis/redis.conf"]
