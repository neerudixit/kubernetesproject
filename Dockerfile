FROM centos:latest
MAINTAINER nareshdixit23@gmail.com
RUN yum install -y httpd \
   zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/video-catalog.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip video-catalog.zip
RUN cp -rvf templatemo_552_video_catalog/* .
RUN rm -rf templatemo_552_video_catalog video-catalog.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
