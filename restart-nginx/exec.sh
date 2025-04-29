#!/bin/bash
if ! systemctl is-active --quiet nginx; then
    systemctl restart nginx
    echo "$(date) - Nginx restarted" >> /var/log/nginx_monitor.log
fi