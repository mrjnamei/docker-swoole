FROM php:7.1-fpm
COPY ./sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    && docker-php-ext-install iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && pecl install inotify \
    &&  docker-php-ext-enable inotify \
    && pecl install swoole && docker-php-ext-enable swoole \
    && echo "log_errors = On" >> /usr/local/etc/php/conf.d/log.ini \
    && echo "error_log=/dev/stderr" >> /usr/local/etc/php/conf.d/log.ini \
    && apt-get install -y git vim 
EXPOSE 9000
EXPOSE 80