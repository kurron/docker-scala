FROM kurron/docker-jetbrains-base:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.ide.name="Scala" org.kurron.ide.version=2.11.7

ADD http://downloads.typesafe.com/scala/2.11.7/scala-2.11.7.tgz /tmp/ide.tar.gz

RUN mkdir -p /opt/scala && \
    tar zxvf /tmp/ide.tar.gz --strip-components=1 -C /opt/scala && \
    rm /tmp/ide.tar.gz

ENV SCALA_HOME=/opt/scala

VOLUME ["/pwd"]

USER developer:developer
WORKDIR /pwd
ENTRYPOINT ["/opt/scala/bin/scala"]
#CMD ["-help"]
