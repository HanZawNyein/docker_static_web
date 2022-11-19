FROM ubuntu:latest
LABEL maintainer hanzaw
RUN apt-get -yqq update; apt-get -yqq install nginx

ADD startbootstrap-modern-business-gh-pages/about.html /var/www/html/about.html
ADD startbootstrap-modern-business-gh-pages/index.html /var/www/html/index.html
ADD startbootstrap-modern-business-gh-pages/blog-home.html /var/www/html/blog-home.html
ADD startbootstrap-modern-business-gh-pages/blog-post.html /var/www/html/blog-post.html
ADD startbootstrap-modern-business-gh-pages/contact.html /var/www/html/contact.html
ADD startbootstrap-modern-business-gh-pages/faq.html /var/www/html/faq.html
ADD startbootstrap-modern-business-gh-pages/portfolio-item.html /var/www/html/portfolio-item.html
ADD startbootstrap-modern-business-gh-pages/portfolio-overview.html /var/www/html/portfolio-overview.html
ADD startbootstrap-modern-business-gh-pages/pricing.html /var/www/html/pricing.html

ADD startbootstrap-modern-business-gh-pages/assets/favicon.ico /var/www/html/assets/favicon.ico

ADD startbootstrap-modern-business-gh-pages/css/styles.css /var/www/html/css/styles.css 

ADD startbootstrap-modern-business-gh-pages/js/scripts.js /var/www/html/js/scripts.js


ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80