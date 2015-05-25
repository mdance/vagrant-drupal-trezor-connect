#!/bin/bash
#
# Variables below correspond to values in PuPHPet's config.yml.
#

DRUPAL_ROOT=/var/www
DRUPAL_MYSQL_USER=root
DRUPAL_MYSQL_PASSWORD=password
DRUPAL_MYSQL_DB=drupal7

DRUPAL_MYSQL_BACKUP=/vagrant/dev/backups/sql/base-bootstrap.sql

# Start installation.
echo '****** Starting Drupal 7 Trezor Connect Site Installation ******'

mysql -u${DRUPAL_MYSQL_USER} -p${DRUPAL_MYSQL_PASSWORD} ${DRUPAL_MYSQL_DB} < ${DRUPAL_MYSQL_BACKUP}

chmod a-w \
${DRUPAL_ROOT}/sites/default/settings.php \
${DRUPAL_ROOT}/sites/default/local.settings.php

echo '****** Completed Drupal 7 Trezor Connect Site Installation ******'
