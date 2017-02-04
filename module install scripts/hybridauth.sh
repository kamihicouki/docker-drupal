drush dl hybridauth-7.x-2.x-dev ctools -y
DIR=/var/www/html/sites/all/libraries/hybridauth
rm -r ${DIR}
mkdir -p ${DIR}
curl -sL https://github.com/hybridauth/hybridauth/archive/v2.7.0.tar.gz | tar xz -C ${DIR} --strip=1
drush en hybridauth -y
#drush role-add-perm 'anonymous' 'use hybridauth'
drush dl realname -y
drush en realname -y
