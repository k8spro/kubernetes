FROM ubuntu:latest
RUN apt-get -y update \
RUN apt-get -y install software-properties-common \
&& apt-get -y install apt-utils  \
&& apt-get -y install curl \
&& apt-get -y install sudo \
&& sudo add-apt-repository main \
&& sudo add-apt-repository universe \
&& sudo add-apt-repository restricted \
&& sudo add-apt-repository multiverse \
&& RUN apt-get -y install apache2 \
&& apt-get -y install wget \
&& mkdir -p /var/www/html \
COPY index.html /var/www/html/
WORKDIR /var/www/html
EXPOSE 80
