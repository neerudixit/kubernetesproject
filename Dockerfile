FROM centos:latest
MAINTAINER nareshdixit23@gmail.com
RUN yum install -y httpd \
   zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/veggie.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip veggie.zip
RUN cp -rvf veggie-master/* .
RUN rm -rf veggie-master veggie.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
