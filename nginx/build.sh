docker pull nginx:1.13
docker build . -t silentk/teampseak-web-nginx --no-cache
docker push silentk/teampseak-web-nginx
