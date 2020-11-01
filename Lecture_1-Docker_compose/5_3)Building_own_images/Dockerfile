## we need mysqli for connection for the database
## not enabled by default in php
FROM php:7.2-apache
RUN apt-get -y update \
&& apt-get install -y libicu-dev \
&& docker-php-ext-configure intl \
&& docker-php-ext-install intl 
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
