FROM centos:latest
MAINTAINER nareshdixit23@gmail.com
RUN mkdir abc bcd
RUN yum install -y httpd \
   zip \
   unzip
COPY /root/oxer.zip /var/www/html
WORKDIR /var/www/html
RUN unzip oxer.zip
RUN cp -rvf oxer-html/* .
RUN rm -rf oxer-html oxer.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
