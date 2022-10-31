FROM alpine:edge

RUN apk add --no-cache fuse gettext samba supervisor restic

RUN adduser -D -u 1000 -s /sbin/nologin restic \
    && mkdir -p "/home/restic/mount" \
    && mkdir -p "/home/restic/cache" \
    && chown -R restic "/home/restic"

COPY ./files/fuse.conf /etc/fuse.conf
COPY ./files/smb.conf /etc/samba/smb.conf
COPY ./files/supervisord.conf /etc/supervisord.conf
COPY ./files/chpasswd.sh /usr/libexec/chpasswd.sh

USER root
CMD [ "supervisord", "-c", "/etc/supervisord.conf" ]
