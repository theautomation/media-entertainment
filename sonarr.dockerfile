FROM ghcr.io/linuxserver/sonarr:latest

RUN apt-get update && apt-get install -y \
    xml-twig-tools -y

WORKDIR /app/sonarr/bin
COPY healthcheck/healthcheck_sonarr.sh .
RUN chmod +x *.sh

HEALTHCHECK --interval=5m --timeout=5s \
  CMD /app/sonarr/bin/healthcheck_sonarr.sh