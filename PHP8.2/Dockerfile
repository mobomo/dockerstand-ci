# Alpine v3.19
FROM docker:25.0.3-git

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
    php82 \
    php82-bcmath\
    php82-bz2 \
    php82-cli \
    php82-ctype \
    php82-curl \
    php82-dom \
    php82-exif \
    php82-fileinfo \
    php82-gd \
    php82-gmp \
    php82-iconv \
    php82-mbstring \
    php82-mysqli \
    php82-pdo \
    php82-pdo_dblib \
    php82-pdo_mysql \
    php82-phar \
    php82-session \
    php82-simplexml \
    php82-soap \
    php82-sodium \
    php82-tokenizer \
    php82-xml \
    php82-xmlreader \
    php82-xmlwriter \
    php82-xsl \
    php82-zip

RUN apk add --no-cache \
    nodejs \
    npm \
    curl \
    jq \
    patch

RUN rm /usr/bin/php && ln -s /usr/bin/php82 /usr/bin/php

COPY --from=composer/composer /usr/bin/composer /usr/bin/composer

RUN rm -f /var/cache/apk/*

RUN npm install -g gulp

## Install Robo.
RUN curl -L "https://github.com/consolidation/Robo/releases/download/3.0.7/robo.phar" -o /tmp/robo.phar \
    && chmod +x /tmp/robo.phar \
    && mv /tmp/robo.phar /usr/local/bin/robo

ENTRYPOINT ["/bin/sh"]
