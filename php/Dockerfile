FROM ubuntu:xenial
ENV DEBIAN_FRONTEND=noninteractive

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Basic tool
RUN \ 
apt-get update \
&& apt-get upgrade -y \
&& apt-get -y install software-properties-common

# PHP
RUN LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php \
&& apt-get update \
&& apt-get install php5.6-fpm -y \
&& rm /etc/php/5.6/fpm/php.ini \
&& rm /etc/php/5.6/fpm/pool.d/www.conf \
&& rm /etc/php/5.6/fpm/php-fpm.conf

COPY ./imported_files/php.ini /etc/php/5.6/fpm/php.ini
COPY ./imported_files/www.conf /etc/php/5.6/fpm/pool.d/www.conf
COPY ./imported_files/php-fpm.conf /etc/php/5.6/fpm/php-fpm.conf
COPY ./imported_files/docker-entrypoint.sh /usr/local/bin/
COPY ./app /usr/source/tsweb

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

VOLUME /var/www/html
WORKDIR /var/www/html/

EXPOSE 9000
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm5.6"]
