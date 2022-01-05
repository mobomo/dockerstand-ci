# Alpine v3.12
FROM docker:git

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
    libffi-dev

RUN pip3 install docker-compose

RUN apk add --no-cache \
    php8 \
    php8-cli \
    php8-fileinfo \
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
    php8-sodium \
    php8-gd \
    php8-phar

RUN apk add --no-cache \
    nodejs \
    npm \
    curl \
    jq \
    patch

RUN ln -s /usr/bin/php8 /usr/bin/php

RUN /usr/bin/php8 -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    /usr/bin/php8 -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    /usr/bin/php8 composer-setup.php --install-dir=bin --filename=composer && \
    /usr/bin/php8 -r "unlink('composer-setup.php');" \



RUN rm -f /var/cache/apk/*

## Install Robo.
RUN curl -L "https://github.com/consolidation/Robo/releases/download/3.0.7/robo.phar" -o /tmp/robo.phar \
    && chmod +x /tmp/robo.phar \
    && mv /tmp/robo.phar /usr/local/bin/robo

ENTRYPOINT ["/bin/sh"]
