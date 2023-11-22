FROM php:8.2-fpm-alpine 

RUN apk add --no-cache nginx wget npm
  
RUN mkdir -p /run/nginx

COPY docker/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /app
RUN mkdir -p /docker
COPY ./docker /docker
COPY ./src /app
 
RUN apk add --no-cache tzdata
ENV TZ=Asia/Bangkok

RUN chown -R www-data: /app
  

CMD sh /docker/startup.sh