#!/bin/bash

echo "Lighttpd is up..."

# Start lighttpd
/usr/sbin/lighttpd -f /etc/lighttpd/lighttpd.conf &> /dev/null

# Watch error logs
echo "***** Lighttpd error logs *****"
tail -f /var/log/lighttpd/error.log
