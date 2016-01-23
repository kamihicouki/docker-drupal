FROM php:5-fpm

# install the PHP extensions we need
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev git mysql-client vim sudo \
	&& rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip mysql mysqli opcache

#
# Drush Install & Setting
#
# Install Composer
RUN \
  curl -sS https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer \
  && ln -s /usr/local/bin/composer /usr/bin/composer

# Install Drush
RUN \
  git clone https://github.com/drush-ops/drush.git /usr/local/src/drush \
  && cd /usr/local/src/drush \
  && git checkout master \
  && ln -s /usr/local/src/drush/drush /usr/bin/drush \
  && composer install \
  && echo "alias drush='sudo -u www-data drush'" >> /etc/profile \
  && drush --version

WORKDIR /var/www/html

# https://www.drupal.org/node/3060/release
ENV DRUPAL_VERSION 7.41
ENV DRUPAL_MD5 7636e75e8be213455b4ac7911ce5801f

RUN curl -fSL "http://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz \
	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - \
	&& tar -xz --strip-components=1 -f drupal.tar.gz \
	&& rm drupal.tar.gz \
	&& chown -R www-data:www-data sites

VOLUME /var/www/html
