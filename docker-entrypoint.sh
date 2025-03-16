#!/bin/sh
set -e
mkdir -p /var/log/cron /var/lib/onedrive
ln -sf /proc/1/fd/1 /var/log/cron/cron.log
exec "$@"
