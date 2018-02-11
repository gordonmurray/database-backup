#!/usr/bin/env bash

set -e

/usr/bin/mysqldump --host=${SOURCE_DB_HOST} --user=${SOURCE_DB_USER} --password="${SOURCE_DB_PASSWORD}" ${SOURCE_DATABASE} --skip-triggers --single-transaction | gzip > ${SOURCE_DATABASE}.sql.gz
