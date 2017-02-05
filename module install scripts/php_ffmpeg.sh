# よく分からんが次の操作でインストール完了はしない
drush dl php_ffmpeg -y
DIR=/var/www/html/sites/all/libraries/php_ffmpeg
mkdir -p ${DIR}
curl -sL https://github.com/PHP-FFMpeg/PHP-FFMpeg/archive/master.tar.gz | tar xz -C ${DIR} --strip=1
chown -R www-data:www-data ${DIR}
