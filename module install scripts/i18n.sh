drush dl i18n -y
drush en i18n_node, i18n_user, i18n_field, i18n_menu, i18n_variable, i18n_select, i18n_sync, i18n_path, i18n_forum, i18n_taxonomy, i18n_translation, i18n_contact, i18n_string, i18n_block, i18n_redirect, i18n -y

# recomend module
# https://www.drupal.org/project/i18n
MODULES=$(cat << EOS
  i18nviews
  languageicons
  translation_overview
  l10n_client
  i18n_contrib
EOS
)

echo ${MODULES} | xargs -I{} drush dl {} -y
echo ${MODULES} | xargs -I{} drush en {} -y
