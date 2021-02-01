# Alpine v3.12
FROM docker:20.10.2-git

ENTRYPOINT /bin/sh

RUN apk add --no-cache \
    py3-pip==20.1.1-r0 \
    bash==5.0.17-r0 \
    make==4.3-r0 \
    gcc==9.3.0-r2 \
    libc-dev==0.7.2-r3 \
    python3-dev==3.8.5-r0 \
    libffi-dev==3.3-r2 \
    openssl-dev==1.1.1i-r0

RUN pip3 install docker-compose==1.27.4

RUN apk add --no-cache \
    php7==7.3.26-r0 \
    composer==1.10.19-r0 \
    patch==2.7.6-r6 \
    php7-dom==7.3.26-r0 \
    php7-tokenizer==7.3.26-r0 \
    php7-simplexml==7.3.26-r0 \
    php7-ctype==7.3.26-r0 \
    php7-xmlwriter==7.3.26-r0 \
    php7-zip==7.3.26-r0 \
    php7-pdo==7.3.26-r0 \
    php7-mysqli==7.3.26-r0 \
    php7-pdo_dblib=7.3.26-r0 \
    php7-pdo_mysql==7.3.26-r0 \
    php7-xml==7.3.26-r0 \
    php7-session==7.3.26-r0 \
    php7-mbstring==7.3.26-r0

RUN apk add --no-cache \
    nodejs==12.20.1-r0 \
    npm==12.20.1-r0

RUN apk add --no-cache \
    mariadb==10.4.15-r0 \
    mariadb-client==10.4.15-r0

RUN rm -f /var/cache/apk/*

COPY my.cnf /etc/my.cnf
RUN mkdir /run/mysqld
RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
RUN mysqladmin --no-defaults --port=3308 --user=root password 'root'
