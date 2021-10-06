FROM centos:latest
MAINTAINER nareshdixit23@gmail.com
RUN yum install -y httpd \
   zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/uloax.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip uloax.zip
RUN cp -rvf uloax/* .
RUN rm -rf uloax uloax.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
