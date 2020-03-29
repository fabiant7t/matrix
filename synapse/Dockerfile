FROM alpine:3.11

MAINTAINER Fabian Topfstedt <topfstedt@schneevonmorgen.com>

ENV SYNAPSE_SERVER_NAME=localhost
ENV SYNAPSE_REPORT_STATS=no
ENV TZ=Europe/Vienna

RUN apk --no-cache --update add \
    ca-certificates \
    dumb-init \
    libffi-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    libressl-dev \
    libxml2-dev \
    libxslt-dev \
    python3 \
    sqlite \
    zlib-dev \
 && apk --no-cache add --virtual build-dependencies \
    build-base \
    git \
    py3-pip \
    py3-virtualenv \
    python3-dev \
 && python3 -m venv /venv \
 && /venv/bin/pip3 install --no-cache-dir matrix-synapse \
 && apk del build-dependencies

WORKDIR /app
COPY . /app

EXPOSE 8008

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/app/entrypoint.sh"]
