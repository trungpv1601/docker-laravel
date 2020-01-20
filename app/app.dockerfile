FROM php:7.4-fpm

RUN apt-get update && apt-get install -y libzip-dev

# Extension mysql driver for mysql
RUN docker-php-ext-install pdo_mysql mysqli zip

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer