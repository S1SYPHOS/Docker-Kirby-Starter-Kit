FROM nginx:latest

ADD ./docker/site.conf /etc/nginx/conf.d/default.conf
