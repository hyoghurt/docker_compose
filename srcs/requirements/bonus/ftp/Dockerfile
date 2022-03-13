FROM alpine:3.12

RUN apk update
RUN apk add vsftpd

RUN mkdir -p /run/vsftpd
RUN adduser -D luser
RUN echo "luser:luser" | chpasswd
RUN chmod 755 /home/luser
RUN chown -R luser:luser /home/luser/

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE 20 21 31001 31002

CMD ["/usr/sbin/vsftpd", "/etc/vsftpd/vsftpd.conf"]
