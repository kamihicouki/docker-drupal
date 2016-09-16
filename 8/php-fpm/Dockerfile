FROM drupal:8-fpm

RUN \
  php -r "readfile('http://files.drush.org/drush.phar');" > drush \
  && chmod +x drush \
  && mv drush /usr/local/bin \
  && drush init -y
RUN \
  apt update \
  && apt install --yes mysql-client sudo php5-ssh2
RUN \
  docker-php-ext-install \
    gd \
    mbstring \
    ftp \
    zip \
    mysql \
    mysqli \
    opcache
