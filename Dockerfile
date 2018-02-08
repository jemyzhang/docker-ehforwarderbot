FROM alpine:edge
MAINTAINER Jemy Zhang <jemy.zhang@gmail.com>

ENV LANG C.UTF-8
ENV EFB_DATA_PATH /data/
ENV EFB_PARAMS ""
ENV EFB_PROFILE "default"
ENV EFB_AUTOUPDATE "true"
ENV HTTPS_PROXY ""

RUN apk add --update --no-cache ca-certificates

RUN set -ex \
    && apk add --no-cache --virtual .run-deps \
           ffmpeg \
           libmagic \
           python3 \
           py3-numpy \
           py3-pillow

RUN set -ex \
    && pip3 install pysocks ehforwarderbot efb-telegram-master efb-wechat-slave

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
