FROM gliderlabs/alpine:3.2
MAINTAINER Fabio Rehm "fgrehm@gmail.com"
RUN apk-install curl \
    && curl -Ls https://github.com/fgrehm/docker-phantomjs2/releases/download/v2.0.0-20150722/dockerized-phantomjs.tar.gz \
       | tar xz -C /
ENTRYPOINT ["/usr/local/bin/phantomjs"]
