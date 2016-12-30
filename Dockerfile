FROM polandj/alpine-ssh

MAINTAINER Amar Sood (@tekacs)

RUN apk update && \
    apk add --no-cache fish man mdocml-apropos && \
    rm -f /tmp/* /etc/apk/cache/*

RUN sed -i -e "s/bin\/ash/usr\/bin\/fish/" /etc/passwd

ENV SHELL /usr/bin/fish
