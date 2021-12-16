## Git image that fetchs website last release
FROM debian:stable-slim

# Update
RUN apt-get update ; apt-get upgrade -y
# Installation
RUN apt-get install -y git

# Plug with webserver container
VOLUME /root/repo/

# Copy and set as executable startup script
COPY startup.sh /
RUN chmod u+x /startup.sh

ENTRYPOINT /startup.sh
