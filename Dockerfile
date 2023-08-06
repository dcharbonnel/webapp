FROM ubuntu:18.04
MAINTAINER charbonnel (dylancharbonnel37@gmail.com)
RUN apt-get update
RUN  DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]

