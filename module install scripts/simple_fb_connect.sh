mkdir -p /var/www/html/sites/all/libraries/facebook-php-sdk-v4
cd /var/www/html/sites/all/libraries/facebook-php-sdk-v4
curl -sL https://github.com/facebook/php-graph-sdk/archive/4.0.23.tar.gz | tar xz -C /var/www/html/sites/all/libraries/facebook-php-sdk-v4 --strip=1
drush dl simple_fb_connect -y
drush en simple_fb_connect -y
