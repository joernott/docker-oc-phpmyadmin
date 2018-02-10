# Docker image: CentOS 7 with PHP-FPM 7.2 from IUS and phpMyAdmin

Options to php-fpm can be passed by setting the PHP_OPTIONS variable

## Usage:
### Simple usage
```
docker run -d -p 9000:9000 \
    -v /data/phpmyadmin/config.inc.php:/php/config.inc.php \
    registry.ott-consult.de/oc/phpmyadmin:latest
```

### Complete example
```
docker run -d -p 9000:9000 \
    -e PHP_OPTIONS='-d date.timezone = "Europe/Berlin"' \
    -v /data/phpmyadmin/config.inc.php:/php/config.inc.php \
    registry.ott-consult.de/oc/php-fpm:latest
```
