FROM wordpress:php7.3-fpm

RUN apt-get update && apt-get install -y less wget mariadb-client subversion

RUN wget https://phar.phpunit.de/phpunit-7.phar && \
    chmod +x phpunit-7.phar && \
    mv phpunit-7.phar /usr/local/bin/phpunit

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp
