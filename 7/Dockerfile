FROM drupal:7

RUN \
	apt-get update \
	&& apt-get install -y libpng12-dev libjpeg-dev libpq-dev git mysql-client vim sudo \
	&& a2enmod rewrite

RUN \
  curl -sL -O https://dl-ssl.google.com/dl/linux/direct/mod-pagespeed-stable_current_amd64.deb \
  && dpkg -i mod-pagespeed-*.deb \
  && apt-get -f install

# Install the PHP extensions.
#	&& rm -rf /var/lib/apt/lists/* \
#	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
#	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip mysql mysqli opcache
#
#RUN apt-get update && apt-get install -y libmemcached-dev \
#    && pecl install memcached \
#    && docker-php-ext-enable memcached

# Install Composer
#RUN \
#  curl -sS https://getcomposer.org/installer | php \
#  && mv composer.phar /usr/local/bin/composer \
#  && ln -s /usr/local/bin/composer /usr/bin/composer
#
## Install Drush
#RUN \
#  git clone https://github.com/drush-ops/drush.git /usr/local/src/drush \
#  && cd /usr/local/src/drush \
#  && git checkout master \
#  && ln -s /usr/local/src/drush/drush /usr/bin/drush \
#  && composer install \
#  && echo "alias drush='sudo -u www-data drush'" >> /etc/profile \
#  && drush --version
#
