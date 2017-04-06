drush dl flexslider -y

BASE_DIR=/var/www/html/sites/all/libraries/flexslider
mkdir -p ${BASE_DIR}
curl -sL https://github.com/woocommerce/FlexSlider/archive/master.tar.gz | tar xz -C ${BASE_DIR} --strip=1
chown -R www-data:www-data ${BASE_DIR}

drush en flexslider flexslider_example flexslider_fields flexslider_views -y
