ARG ALPINE_VERSION=latest
FROM alpine:${ALPINE_VERSION}

RUN apk update && apk add nginx supervisor

COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisord.conf

CMD ["supervisord", "-c", "/etc/supervisord.conf"]