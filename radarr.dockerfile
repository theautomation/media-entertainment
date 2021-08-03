FROM ghcr.io/linuxserver/radarr:latest

WORKDIR /app/radarr/bin
COPY healthcheck/healthcheck_radarr.sh .
RUN chmod +x *.sh

HEALTHCHECK --interval=5m --timeout=5s \
  CMD /app/radarr/bin/healthcheck_radarr.sh