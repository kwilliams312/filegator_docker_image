FROM php:7.4-apache

RUN apt update && apt upgrade -qy

# compressions utilities
RUN apt-get install -y \
	libzip-dev \
	zip \
	unzip

RUN docker-php-ext-install zip

WORKDIR /var/www/html

RUN curl -L https://github.com/filegator/static/raw/master/builds/filegator_latest.zip -o filegator_latest.zip 

RUN unzip filegator_latest.zip && rm filegator_latest.zip 

RUN groupmod -g 911 www-data
RUN usermod -u 911 -g 911 www-data
 
RUN mv filegator/* ./ && rm -rf filegator/ && chown www-data:www-data -R /var/www
