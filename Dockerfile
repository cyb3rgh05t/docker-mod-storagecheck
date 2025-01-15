FROM scratch

LABEL maintainer=cyb3rgh05t
LABEL org.opencontainers.image.source=https://github.com/cyb3rgh05t/docker-mod-storagecheck
      org.opencontainers.image.title="Universal Mount Mod" \
      org.opencontainers.image.description="A mod to add universal mount functionality to LinuxServer containers." \
      org.opencontainers.image.maintainer="Your Name <your.email@example.com>" \
      org.opencontainers.image.version="1.0.0"

COPY root/ /

RUN chmod +x /etc/s6-overlay/s6-rc.d/init-mod-universal-mount/run
RUN chmod +x /etc/s6-overlay/s6-rc.d/svc-mod-universal-storagecheck/run