# Use an official PHP Apache runtime as a parent image
FROM php:7.0-apache

# Set the working directory to /var/www/html/
WORKDIR /var/www/html/

# Install mysqli extensions
RUN docker-php-ext-install mysqli && \
apt-get update && \
apt-get install -y zlib1g-dev && \
apt-get install -y libxml2-dev && \
docker-php-ext-install zip && \
docker-php-ext-install xml

# Make port 80 available to the world outside this container
EXPOSE 80