# 他ライブラリのダウンロードも必要なため没

BASE_DIR=/var/www/html/sites/all/libraries/swiftmailer
mkdir -p ${BASE_DIR}
curl -sL https://github.com/swiftmailer/swiftmailer/archive/master.tar.gz | tar xz -C ${BASE_DIR} --strip=1

drush dl swiftmailer mailsystem -y
drush en swiftmailer mailsystem -y
