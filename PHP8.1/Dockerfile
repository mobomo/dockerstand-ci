# Alpine v3.12
FROM docker:22.04-cli

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
    git

RUN pip3 install docker-compose

RUN apk add --no-cache \
    php81 \
    php81-bcmath\
    php81-bz2 \
    php81-cli \
    php81-ctype \
    php81-curl \
    php81-dom \
    php81-exif \
    php81-fileinfo \
    php81-gd \
    php81-gmp \
    php81-iconv \
    php81-mbstring \
    php81-mysqli \
    php81-pdo \
    php81-pdo_dblib \
    php81-pdo_mysql \
    php81-phar \
    php81-session \
    php81-simplexml \
    php81-soap \
    php81-sodium \
    php81-tokenizer \
    php81-xml \
    php81-xmlreader \
    php81-xmlwriter \
    php81-xsl \
    php81-zip

RUN apk add --no-cache \
    nodejs \
    npm \
    curl \
    jq \
    patch

RUN ln -s /usr/bin/php81 /usr/bin/php

COPY --from=composer/composer /usr/bin/composer /usr/bin/composer

RUN rm -f /var/cache/apk/*

## Install Robo.
RUN curl -L "https://github.com/consolidation/Robo/releases/download/3.0.7/robo.phar" -o /tmp/robo.phar \
    && chmod +x /tmp/robo.phar \
    && mv /tmp/robo.phar /usr/local/bin/robo

ENTRYPOINT ["/bin/sh"]
