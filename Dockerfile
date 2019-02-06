FROM lsiobase/alpine:3.8

# Original Source from -> LABEL maintainer 'Sam Burney <sam@burney.io>'

RUN apk add frr --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

COPY ./root/ /

EXPOSE 179

ENTRYPOINT [ "/init" ]
