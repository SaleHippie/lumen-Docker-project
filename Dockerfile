FROM php:8.1.0-fpm

RUN apt-get update && \
    apt-get install -y \
    git \
    unzip

RUN docker-php-ext-install pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
&& composer --version

WORKDIR /var/www/html

RUN composer create-project --prefer-dist laravel/lumen src --working-dir=/var/www/html

