FROM drupal:7.44-fpm

RUN \
  php -r "readfile('http://files.drush.org/drush.phar');" > drush \
  && chmod +x drush \
  && mv drush /usr/local/bin \
  && drush -y init
RUN \
  apt update \
  && apt install --yes mysql-client sudo php5-ssh2 vim
RUN \
  docker-php-ext-install gd mbstring ftp zip mysqli opcache
