drush dl feeds -y
drush en feeds feeds_ui feeds_import -y

# Below is Utilitys
drush dl feeds_tamper -y
drush en feeds_tamper_ui feeds_tamper -y

drush dl feeds_csv_preview_before_import -y
drush en feeds_csv_preview_before_import -y

drush dl media_feeds -y
drush en media_feeds -y

# drush dl feeds_files -y
# drush en feeds_file -y

drush dl entityreference_feeds -y
