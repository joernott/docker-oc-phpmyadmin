#!/bin/bash
set -e
set -x

source /tmp/install/functions.sh

rm -rf /php
cd /
curl -jklsSo phpmyadmin.tar.xz "https://files.phpmyadmin.net/phpMyAdmin/${PHPMYADMIN_VERSION}/phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages.tar.xz"
tar -xJf phpmyadmin.tar.xz
mv phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages /php
rm phpmyadmin.tar.xz
cleanup
