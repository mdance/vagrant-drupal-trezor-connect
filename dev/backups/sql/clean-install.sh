#!/bin/bash
mysqladmin drop drupal7
mysqladmin create drupal7
mysql drupal7 < base-bootstrap.sql
