DIR="/var/www/html/sites/all/libraries/colorbox"
rm -r ${DIR}
mkdir -p ${DIR}
curl -sL https://github.com/jackmoore/colorbox/archive/1.x.tar.gz | tar xz -C ${DIR} --strip=1

drush dl colorbox -y
drush en colorbox -y
