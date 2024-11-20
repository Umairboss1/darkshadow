FROM alpine:latest
LABEL MAINTAINER="https://github.com/Umairboss1/darkshadow"
WORKDIR /darkshadow/
ADD . /darkshadow
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./darkshadow.sh"