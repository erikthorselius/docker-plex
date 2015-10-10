#!/bin/bash -eux

mkdir -p /config/logs/supervisor
touch /supervisord.log
touch /supervisord.pid
/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
