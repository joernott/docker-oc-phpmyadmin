FROM registry.ott-consult.de/oc/php-fpm:latest
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV PHPMYADMIN_VERSION=4.7.7 \
    GIT_COMMIT="" \
    IMAGE_HISTORY=" « jenkins-docker-oc-php-fpm-15 « jenkins-docker-oc-base-28 « centos/7 declare -x OLDPWD declare -x PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin declare -x PWD=/ declare -x SHLVL=1 declare -x OLDPWD declare -x PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin declare -x PHP_OPTIONS= declare -x PHP_VERSION=72u declare -x PWD=/ declare -x SHLVL=1"


COPY src /

RUN /tmp/install/oc-phpmyadmin.sh
