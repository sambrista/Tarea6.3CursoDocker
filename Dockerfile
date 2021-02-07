FROM php:7.4-apache

RUN apt update && apt install -y nano && apt install -y git

COPY index.html /var/www/html/index.html
COPY info.php /var/www/html/info.php

RUN chown -R www-data:www-data /var/www/html/*
