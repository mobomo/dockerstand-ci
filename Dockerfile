# Alpine v3.12
FROM docker:git

RUN apk add --no-cache \
    py3-pip \
    bash \
    make \
    rsync \
    rust \
    gcc \
    libc-dev \
    python3-dev \
    libffi-dev \
    openssl-dev

ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1

RUN pip3 install docker-compose==1.27.4

RUN apk add --no-cache \
    composer \
    patch \
    php7 \
    php7-dom \
    php7-tokenizer \
    php7-simplexml \
    php7-ctype \
    php7-xmlwriter \
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
    php7-gd

RUN apk add --no-cache \
    nodejs \
    npm \
    curl \
    jq

RUN rm -f /var/cache/apk/*

ENTRYPOINT ["/bin/sh"]
