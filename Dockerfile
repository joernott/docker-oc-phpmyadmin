FROM registry.ott-consult.de/oc/apache-php:latest
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV PHPMYADMIN_VERSION=4.7.7 \
    GIT_COMMIT="" \
    IMAGE_HISTORY="x"

COPY src /

RUN /tmp/install/oc-phpmyadmin.sh
