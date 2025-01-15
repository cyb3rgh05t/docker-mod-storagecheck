FROM scratch

LABEL maintainer=cyb3rgh05t
LABEL org.opencontainers.image.source=https://github.com/cyb3rgh05t/docker-mod-storagecheck

COPY root/ /

RUN chmod +x /etc/s6-overlay/s6-rc.d/init-mod-universal-mount/run
RUN chmod +x /etc/s6-overlay/s6-rc.d/svc-mod-universal-storagecheck/run