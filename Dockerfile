FROM alpine

RUN apk update && \
    apk add --no-cache busybox-suid onedrive openssl && \
    rm -rf /root/.cache /tmp/* /var/cache/apk/* /var/tmp/*

RUN rm -rf /var/spool/cron/crontabs && \
    mkdir -p /var/spool/cron/crontabs && \
    cat <<EOF > /var/spool/cron/crontabs/root
30 0 * * * onedrive --sync --verbose >> /var/log/cron/cron.log 2>&1
EOF

COPY onedrive/config /etc/onedrive/config
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["crond", "-f"]
