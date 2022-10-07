# Alpine v3.12
FROM docker:20.10-cli

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
    php8-bcmath \
    php8-bz2 \
    php8-cli \
    php8-ctype \
    php8-curl \
    php8-dom \
    php8-exif \
    php8-fileinfo \
    php8-gd \
    php8-gmp \
    php8-iconv \
    php8-mbstring \
    php8-mysqli \
    php8-pdo \
    php8-pdo_dblib \
    php8-pdo_mysql \
    php8-phar \
    php8-session \
    php8-simplexml \
    php8-soap \
    php8-sodium \
    php8-tokenizer \
    php8-xml \
    php8-xmlreader \
    php8-xmlwriter \
    php8-xsl \
    php8-zip

RUN apk add --no-cache \
    nodejs \
    npm \
    curl \
    jq \
    patch

COPY --from=composer/composer /usr/bin/composer /usr/bin/composer

RUN rm -f /var/cache/apk/*

## Install Robo.
RUN curl -L "https://github.com/consolidation/Robo/releases/download/3.0.7/robo.phar" -o /tmp/robo.phar \
    && chmod +x /tmp/robo.phar \
    && mv /tmp/robo.phar /usr/local/bin/robo

ENTRYPOINT ["/bin/sh"]
