FROM composer:1.10.8

LABEL version="1.0.0"
LABEL repository="https://github.com/NWBY/pest-action"
LABEL homepage="https://github.com/NWBY/pest-action"
LABEL maintainer="Sam Newby <sam@nwby.io>"

RUN composer global require --no-progress phpunit/phpunit 9.*
COPY entrypoint /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]