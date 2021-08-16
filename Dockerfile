FROM centos:latest
MAINTAINER nareshdixit23@gmail.com
RUN yum install -y httpd \
   zip \
   unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page270/enfold.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip enfold.zip
RUN cp -rvf enfold/* .
RUN rm -rf enfold  enfold.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
