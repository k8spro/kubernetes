FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
MAINTAINER sai
WORKDIR  /var/www/html/
COPY index.html /var/www/html/
EXPOSE 80
CMD apachectl -D FOREGROUND
