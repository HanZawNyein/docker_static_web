FROM ubuntu
LABEL maintainer hanzaw
RUN apt-get -yqq update; apt-get -yqq install nginx

ADD F:/docker-dev/docker_static_web/startbootstrap-modern-business-gh-pages/* /var/www/html/*
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80