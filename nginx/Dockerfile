FROM nginx:1.13

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN rm /etc/nginx/nginx.conf \
&& rm /etc/nginx/conf.d/default.conf

VOLUME /var/log/nginx

COPY ./nginx.conf /etc/nginx/nginx.conf