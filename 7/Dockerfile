FROM drupal:7.44

RUN \
  apt-get update \
  && apt-get install -y libpng12-dev libjpeg-dev libpq-dev git mysql-client vim sudo \
  && a2enmod rewrite
RUN \
  curl -sL -O https://dl-ssl.google.com/dl/linux/direct/mod-pagespeed-stable_current_amd64.deb \
  && dpkg -i mod-pagespeed-*.deb \
  && apt-get -f install
RUN \
  php -r "readfile('http://files.drush.org/drush.phar');" > drush \
  && chmod +x drush \
  && mv drush /usr/local/bin \
  && drush -y init
RUN \
  curl -sLo https://raw.githubusercontent.com/drush-ops/drush/master/examples/example.drushrc.php /var/www/html/sites/default/drushrc.php \
  && echo "ini_set('memory_limit', '512M');" >> /var/www/html/sites/default/drushrc.php
RUN \
  docker-php-ext-install \
    gd \
    mbstring \
    ftp \
    zip \
    mysqli \
    opcache
