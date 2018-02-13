# Docker image: CentOS 7 with Apache and PHP 7.2 from IUS and phpMyAdmin

## Usage:
### Simple usage
```
docker run -d -p 80:80 \
    -v /data/phpmyadmin/config.inc.php:/var/www/html/config.inc.php \
    registry.ott-consult.de/oc/phpmyadmin:latest
```

### Complete example
```
docker run -d -p 80:80 \
    -e PHP_OPTIONS='-d date.timezone = "Europe/Berlin"' \
    -v /data/phpmyadmin/config.inc.php:/var/www/html/config.inc.php \
    registry.ott-consult.de/oc/phpmyadmin:latest
```
