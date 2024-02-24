# Alpine v3.13
FROM docker:19.03.15-git

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
    libffi-dev \
    openssl-dev \
    docker-compose \
    git

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
    php7-json \
    php7-mbstring \
    php7-mysqli \
    php7-pdo \
    php7-pdo_dblib \
    php7-pdo_mysql \
    php7-phar \
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

RUN npm install -g gulp

RUN /usr/bin/php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    /usr/bin/php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    /usr/bin/php composer-setup.php --install-dir=bin --filename=composer && \
    /usr/bin/php -r "unlink('composer-setup.php');"

## Install Robo.
RUN curl -L "https://github.com/consolidation/Robo/releases/download/4.0.4/robo.phar" -o /tmp/robo.phar \
    && chmod +x /tmp/robo.phar \
    && mv /tmp/robo.phar /usr/local/bin/robo

ENTRYPOINT ["/bin/sh"]
