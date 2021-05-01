FROM php:7.4-apache

RUN apt update && apt upgrade -qy

RUN apt install unzip

WORKDIR /var/www/html

RUN curl -L https://github.com/filegator/static/raw/master/builds/filegator_latest.zip -o filegator_latest.zip 

RUN unzip filegator_latest.zip && rm filegator_latest.zip 

RUN mv filegator/* ./ && rm -rf filegator/ && chown www-data:www-data -R /var/www/html
