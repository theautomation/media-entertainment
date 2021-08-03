FROM ghcr.io/linuxserver/sonarr:latest

WORKDIR /app/sonarr/bin
COPY healthcheck/healthcheck_sonarr.sh .
RUN chmod +x *.sh

HEALTHCHECK --interval=5m --timeout=5s \
  CMD /app/sonarr/bin/healthcheck_sonarr.sh