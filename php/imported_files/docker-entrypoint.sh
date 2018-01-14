#!/bin/sh
# We remove everything at start
if [ -f "/var/www/html/index.php" ];
then
    rm -R /var/www/html/*
fi

# Copy original source from container
cp -R /usr/source/tsweb/* /var/www/html

# Chown it to www-data then php can easly upload file (wich will be removed at each start)
chown -R www-data /var/www/html

echo "Launching service"
exec "$@"