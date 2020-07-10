FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
&& apt-get -y install sudo \
&& apt-get -y install apt-utils  \
&& apt-get -y install curl \
RUN apt-get -y install apache2 \
&& apt-get -y install wget \
&& mkdir -p /var/www/html \
COPY index.html /var/www/html/
WORKDIR /var/www/html
EXPOSE 80
