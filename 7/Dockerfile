FROM drupal:7

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
  apt update \
  && apt install --yes mysql-client sudo php5-ssh2
RUN \
  chown root:www-data /var/www/html \
  && chmod 2775 /var/www/html
RUN \
  echo 'alias drush="sudo -u www-data drush"' >> ~/.bashrc
RUN \
  docker-php-ext-install \
    gd \
    mbstring \
    ftp \
    zip \
    mysql \
    mysqli \
    opcache
