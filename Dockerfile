FROM scratch
MAINTAINER Fabio Rehm "fgrehm@gmail.com"
ADD https://github.com/fgrehm/docker-phantomjs2/releases/download/v2.0.0-20150720/dockerized-phantomjs.tar.gz /
ENTRYPOINT ["/usr/local/bin/phantomjs"]
