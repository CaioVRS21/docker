FROM nginx
RUN apt-get update && apt-get install -y wget
HEALTHCHECK --interval=5m --timeout=3s CMD wget --no-verbose --tries=1 --spider: http://localhost/ || exit 1
