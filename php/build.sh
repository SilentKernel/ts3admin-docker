docker pull ubuntu:xenial
docker build . -t silentk/teampseak-web-php --no-cache
docker push silentk/teampseak-web-php
