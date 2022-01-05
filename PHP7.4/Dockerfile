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
    patch \
    php7 \
    php7-bz2 \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-exif \
    php7-gd \
    php7-gmp \
    php7-iconv \
    php7-mbstring \
    php7-mysqli \
    php7-pdo \
    php7-pdo_dblib \
    php7-pdo_mysql \
    php7-session \
    php7-simplexml \
    php7-soap \
    php7-sodium \
    php7-tokenizer \
    php7-xml \
    php7-xmlreader \
    php7-xmlrpc \
    php7-xmlwriter \
    php7-xsl \
    php7-zip \
    mariadb-client


RUN apk add --no-cache \
    nodejs \
    npm \
    curl \
    jq

RUN rm -f /var/cache/apk/*

RUN /usr/bin/php8 -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    /usr/bin/php8 -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    /usr/bin/php8 composer-setup.php --install-dir=bin --filename=composer && \
    /usr/bin/php8 -r "unlink('composer-setup.php');"

## Install Robo.
RUN curl -L "https://github.com/consolidation/Robo/releases/download/3.0.7/robo.phar" -o /tmp/robo.phar \
    && chmod +x /tmp/robo.phar \
    && mv /tmp/robo.phar /usr/local/bin/robo

ENTRYPOINT ["/bin/sh"]
