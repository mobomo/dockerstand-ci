# Alpine v3.12
FROM docker:git

ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1

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
    libffi-dev \
    openssl-dev

RUN pip3 install docker-compose

RUN apk add --no-cache \
    composer \
    patch \
    php7 \
    php7-dom \
    php7-tokenizer \
    php7-simplexml \
    php7-ctype \
    php7-xmlwriter \
    php7-xmlreader \
    php7-zip \
    php7-bz2 \
    php7-exif \
    php7-pdo \
    php7-mysqli \
    php7-pdo_dblib \
    php7-pdo_mysql \
    php7-xml \
    php7-session \
    php7-mbstring \
    php7-iconv \
    php7-gmp \
    php7-xmlrpc \
    php7-soap \
    php7-xsl \
    php7-curl \
    php7-gd \
    php7-sodium \
    mariadb-client


RUN apk add --no-cache \
    nodejs \
    npm \
    curl \
    jq

RUN rm -f /var/cache/apk/*

## Install Robo.
RUN curl -L "https://github.com/consolidation/Robo/releases/download/2.2.0/robo.phar" -o /tmp/robo.phar \
    && chmod +x /tmp/robo.phar \
    && mv /tmp/robo.phar /usr/local/bin/robo

ENTRYPOINT ["/bin/sh"]
