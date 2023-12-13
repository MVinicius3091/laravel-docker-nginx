FROM alpine:latest

RUN apk add --no-cache \  
    curl \
    bash \
    zip \
    git \
    unzip \
    nano \
    htop \
    libzip-dev \
    nmap \
    npm \
    nginx

RUN rm -rf /var/lib/apt/lists/*

RUN apk add \
    php82 \
    php82-phar \
    php82-mbstring \
    php82-xml \
    php82-json \
    php82-curl \
    php82-xml \
    php82-openssl \
    php82-iconv \
    php82-zip \
    php82-pdo \
    php82-pdo_pgsql \
    php82-fpm \
    php82-pgsql \
    php82-session \
    php82-tokenizer \
    php82-bcmath \
    php82-dom \
    php82-ctype \
    php82-fileinfo \
    php82-gd \
    php82-intl \
    php82-opcache \
    php82-phar \
    php82-simplexml \
    php82-soap \
    php82-xmlreader \
    php82-xmlwriter \
    php82-zlib

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

# RUN ln -s /usr/bin/php82 /usr/bin/php

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./docker-image/default.conf /etc/nginx/http.d/default.conf
COPY --chown=root:root docker-image/php.ini /usr/local/etc/php
COPY --chown=root:root docker-image/start.sh /tmp/start.sh

RUN chmod +x /tmp/start.sh

CMD ["/bin/bash", "-c", "/tmp/start.sh"]
