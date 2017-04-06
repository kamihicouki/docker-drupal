BASE_DIR=/var/www/html/sites/all/libraries/mailgun
mkdir -p ${BASE_DIR}
curl -sL https://github.com/mailgun/mailgun-php/archive/master.tar.gz | tar xz -C ${BASE_DIR} --strip=1
drush dl mailgun -y
drush en mailgun -y
