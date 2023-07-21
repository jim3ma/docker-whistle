FROM node:lts-alpine

ARG VERSION=v2.9.54

ENV WHISTLE_VERSION=${VERSION}

RUN apk add --no-cache procps && \
    npm install -g whistle@${VERSION}

ENTRYPOINT ["/usr/local/bin/whistle"]
CMD ["run"]
