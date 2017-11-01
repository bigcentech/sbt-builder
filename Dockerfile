FROM heartysoft/docker-builder-aws:0.17.3
MAINTAINER luis@bigcente.ch

ENV ALPINE_JAVA_VERSION=8.131.11-r2
ENV ALPINE_SBT_VERSION=0.13.16

RUN apk update \
 && apk add --no-cache groff openjdk8=$ALPINE_JAVA_VERSION ncurses \
 && curl -L https://github.com/sbt/sbt/releases/download/v$ALPINE_SBT_VERSION/sbt-$ALPINE_SBT_VERSION.tgz -o /tmp/sbt-$ALPINE_SBT_VERSION.tgz \ 
 && tar -xzf /tmp/sbt-$ALPINE_SBT_VERSION.tgz -C /usr/local/ \
 && rm -rf /var/cache/* /tmp/*

ENV PATH $PATH:/usr/local/sbt/bin