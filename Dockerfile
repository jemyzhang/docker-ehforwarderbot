FROM alpine:latest
MAINTAINER Jemy Zhang <jemy.zhang@gmail.com>

ENV LANG C.UTF-8
ENV TZ 'Asia/Shanghai'
ENV EFB_DATA_PATH /data/
ENV EFB_PARAMS ""
ENV EFB_PROFILE "default"
ENV HTTPS_PROXY ""

RUN apk --update upgrade \
    && apk --update add tzdata ca-certificates \
       ffmpeg libmagic python3 \
       tiff libwebp freetype lcms2 openjpeg py3-olefile openblas \
       py3-numpy py3-pillow py3-cryptography py3-decorator
RUN pip3 install pysocks ehforwarderbot efb-telegram-master efb-wechat-slave
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
