FROM alpine:3.14

RUN apk add --no-cache \
    curl \
    python3 \
    ffmpeg
RUN curl -Lo /usr/local/bin/twitch-dl https://github.com/ihabunek/twitch-dl/releases/download/1.16.1/twitch-dl.1.16.1.pyz
RUN chmod a+rx /usr/local/bin/twitch-dl
RUN mkdir /downloads
RUN chmod a+rw /downloads

WORKDIR /downloads

VOLUME ["/downloads"]

ENTRYPOINT ["twitch-dl"]
CMD ["--help"]