FROM kurron/docker-jetbrains-base:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.ide.name="Apache Maven" org.kurron.ide.version=3.3.9

ADD http://mirrors.ibiblio.org/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz /tmp/ide.tar.gz

RUN mkdir -p /opt/maven && \
    tar zxvf /tmp/ide.tar.gz --strip-components=1 -C /opt/maven && \
    rm /tmp/ide.tar.gz

ENV M2_HOME=/opt/maven

VOLUME ["/pwd"]

USER developer:developer
WORKDIR /pwd
ENTRYPOINT ["/opt/maven/bin/mvn"]
CMD ["--version"]
