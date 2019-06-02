FROM ubuntu:14.04
RUN apt-get update && \
apt-get -y install apache2 php5 php5-mysql mysql-client wget
RUN wget http://wordpress.org/wordpress-4.9.9.tar.gz && \
tar xzvf wordpress-4.9.9.tar.gz && \
cp -R ./wordpress/* /var/www/html && \
rm /var/www/html/index.html
RUN chown -R www-data:www-data /var/www/html
EXPOSE 80
ENTRYPOINT /bin/bash
