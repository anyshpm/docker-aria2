FROM alpine:3.15

MAINTAINER Anyshpm Chen<anyshpm@anyshpm.com>

ARG PLATFORM

ARG ARIA2_VERSION

ENV PLATFORM ${PLATFORM:-arm}

ENV ARIA2_VERSION ${ARIA2_VERSION:-1.37.0-r0}

RUN set -x && \
    apk add --no-cache aria2=${ARIA2_VERSION}

CMD aria2c

ENTRYPOINT ["aria2c"]
