FROM ghcr.io/linuxserver/bazarr:latest

HEALTHCHECK CMD curl -f http://localhost:6767/api && curl -i https://api.ipify.org || exit 1