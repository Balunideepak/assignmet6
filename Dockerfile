FROM ubuntu
RUN apt-get update -y 
RUN apt-get install apache2 -y
RUN service apache2 restart
ADD index.html /var/www/html
ENTRYPOINT apachectl -D FOREGROUND

