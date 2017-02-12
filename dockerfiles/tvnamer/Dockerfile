FROM gliderlabs/alpine:3.3
MAINTAINER	Karsten Bruns <karsten@bruns.me>

RUN apk add --update --no-cache ca-certificates python py-pip

RUN pip install --upgrade pip
RUN pip install tvnamer

RUN mkdir /tvshows

WORKDIR /tvshows

VOLUME ["/tvshows"]

ENTRYPOINT ["tvnamer"]