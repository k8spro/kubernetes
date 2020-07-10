FROM ubuntu:18.04
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
RUN apt-get install apache2 -y
MAINTAINER sai
WORKDIR  /var/www/html/
COPY index.html /var/www/html/
EXPOSE 80
CMD apachectl -D FOREGROUND
ENV LANG en_US.utf8
