## Lighttpd image that displays website
FROM debian:stable-slim

# Update
RUN apt-get update ; apt-get upgrade -y
# Installation
RUN apt-get install -y php-cgi lighttpd 

# Port exposure
EXPOSE 80

# Enable php support in lighttpd
RUN lighttpd-enable-mod fastcgi-php
RUN mkdir /run/lighttpd
RUN chown www-data:www-data /run/lighttpd

# Copy and set as executable startup script
COPY startup.sh /
RUN chmod u+x /startup.sh

# Get website from git container
VOLUME /var/www/html

# Website folder
WORKDIR /var/www/html

# Start lighttpd
ENTRYPOINT /startup.sh
