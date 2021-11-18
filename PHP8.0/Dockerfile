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
    php8 \
    php8-dom \
    php8-tokenizer \
    php8-simplexml \
    php8-ctype \
    php8-xmlwriter \
    php8-xmlreader \
    php8-zip \
    php8-bz2 \
    php8-exif \
    php8-pdo \
    php8-mysqli \
    php8-pdo_dblib \
    php8-pdo_mysql \
    php8-xml \
    php8-session \
    php8-mbstring \
    php8-iconv \
    php8-gmp \
    php8-soap \
    php8-xsl \
    php8-curl \
    php8-gd \
    php8-sodium

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
