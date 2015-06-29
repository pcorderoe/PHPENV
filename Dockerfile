###################################
# Dockerfile for run PHP apps
# Based on Debian 7 image
###################################

# Set base image
FROM debian:wheezy

# Set the author - maintainer
MAINTAINER Patricio Cordero <patricio@espejozen.cl> (@pcorderoe)

# Update repositories
RUN apt-get update

# Install apache,php5
RUN apt-get install -y \
	apache2 \
	apache2.2-common \
	apache2-doc \ 
	apache2-mpm-prefork \
	apache2-utils \
	libapache2-mod-php5 \
	php5 \
	php5-common \
	php5-gd \
	php5-mysql \
	php5-imap \
	php5-mcrypt \
	mcrypt \
	php5-imagick \
	imagemagick \
	php5-cli \
	--no-install-recommends

EXPOSE 80
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/www/
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
