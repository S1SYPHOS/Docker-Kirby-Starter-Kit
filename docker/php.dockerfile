FROM php:7.3-fpm-alpine

# install imagick
RUN set -ex \
    && apk add --no-cache --virtual .phpize-deps $PHPIZE_DEPS imagemagick-dev libtool \
    && export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS" \
    && pecl install imagick-3.4.3 \
    && docker-php-ext-enable imagick \
    && apk add --no-cache --virtual .imagick-runtime-deps imagemagick \
    && apk del .phpize-deps

# install gdlib
RUN apk add --no-cache libpng libpng-dev libwebp-dev libjpeg-turbo-dev \
    && docker-php-ext-install gd \
    && apk del libpng libpng-dev libwebp-dev libjpeg-turbo-dev 


ADD ./docker/fpm.conf /usr/local/etc/php-fpm.d/zzzz-sock.conf 

RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories
RUN apk --no-cache add shadow && usermod -u 101 www-data
