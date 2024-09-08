# Alpine v3.20
FROM docker:27.2.0-alpine3.20

ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1

RUN apk update --no-cache

RUN apk add --no-cache \
    py3-pip \
    bash \
    make \
    rsync \
    rust \
    cargo \
    gcc \
    libc-dev \
    python3-dev \
    openssl-dev \
    libffi-dev \
    docker-compose \
    mariadb-client \
    git

COPY scripts/docker-compose.sh /usr/bin/docker-compose.sh
RUN chmod +x /usr/bin/docker-compose.sh

RUN apk add --no-cache \
    php83 \
    php83-bcmath\
    php83-bz2 \
    php83-cli \
    php83-ctype \
    php83-curl \
    php83-dom \
    php83-exif \
    php83-fileinfo \
    php83-gd \
    php83-gmp \
    php83-iconv \
    php83-mbstring \
    php83-mysqli \
    php83-pdo \
    php83-pdo_dblib \
    php83-pdo_mysql \
    php83-phar \
    php83-session \
    php83-simplexml \
    php83-soap \
    php83-sodium \
    php83-tokenizer \
    php83-xml \
    php83-xmlreader \
    php83-xmlwriter \
    php83-xsl \
    php83-zip

RUN apk add --no-cache \
    nodejs \
    npm \
    curl \
    jq \
    patch

RUN rm /usr/bin/php && ln -s /usr/bin/php83 /usr/bin/php

COPY --from=composer/composer /usr/bin/composer /usr/bin/composer

RUN rm -f /var/cache/apk/*

RUN npm install -g gulp

## Install Robo.
RUN curl -L "https://github.com/consolidation/Robo/releases/download/3.0.7/robo.phar" -o /tmp/robo.phar \
    && chmod +x /tmp/robo.phar \
    && mv /tmp/robo.phar /usr/local/bin/robo

ENTRYPOINT ["/bin/sh"]
