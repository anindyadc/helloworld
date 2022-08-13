FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninterative" apt-get -y install tzdata
RUN apt-get -y install apache2
ADD ./index.html /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
