FROM ubuntu:18.04
MAINTAINER satish
LABEL description="it will up apache server"
RUN apt update -y && apt install apache2 -y
ADD demo.tar.gz /var/www/html
WORKDIR /var/www/html
VOLUME [ "/var/lib/apache2" ]
EXPOSE 80
CMD [ "/usr/sbin/apache2","-D","FOREGROUND" ]



