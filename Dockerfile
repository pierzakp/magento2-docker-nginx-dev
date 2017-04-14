FROM nginx:1.11

MAINTAINER Piotr Pierzak <piotrek.pierzak@gmail.com>

ENV PHP_HOST backend
ENV PHP_PORT 9000

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./start.sh /usr/local/bin/start.sh

WORKDIR /var/www/html

RUN chmod 777 /usr/local/bin/start.sh

CMD ["/usr/local/bin/start.sh"]