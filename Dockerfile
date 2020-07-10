FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
&& apt-get -y install sudo \
&& apt-get -y install apt-utils  \
&& apt-get -y install curl \
&& curl -sL https://deb.nodesource.com/setup_5.x | bash -

RUN apt-get -y install apache2 \
&& apt-get -y install wget \
&& sudo wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh \
&& mkdir -p /var/www/html \
COPY index.html /var/www/html/
WORKDIR /var/www/html
EXPOSE 80
