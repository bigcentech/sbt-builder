FROM alpine:3.6
MAINTAINER luis@bigcente.ch

ENV ALPINE_DOCKER_VERSION=17.05.0-r0
ENV ALPINE_JAVA_VERSION=8.131.11-r2
ENV ALPINE_SBT_VERSION=0.13.15

RUN apk update \
 && apk add --no-cache --virtual deps wget \
 && apk add --no-cache bash docker=$ALPINE_DOCKER_VERSION openjdk8=$ALPINE_JAVA_VERSION ncurses \
 && wget https://github.com/sbt/sbt/releases/download/v$ALPINE_SBT_VERSION/sbt-$ALPINE_SBT_VERSION.tgz -P /tmp \ 
 && tar -xzf /tmp/sbt-$ALPINE_SBT_VERSION.tgz -C /usr/local/ \
 && apk del deps \
 && rm -rf /var/cache/* /tmp/*

ENV PATH $PATH:/usr/local/sbt/bin