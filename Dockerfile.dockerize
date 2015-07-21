FROM rosenhouse/phantomjs2
MAINTAINER Fabio Rehm "fgrehm@gmail.com"

RUN echo 'deb http://br.archive.ubuntu.com/ubuntu/ trusty multiverse' >> /etc/apt/sources.list \
    && echo 'deb-src http://br.archive.ubuntu.com/ubuntu/ trusty multiverse' >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y \
                       python-pip \
                       curl \
                       rsync \
                       xfonts-base \
                       ttf-mscorefonts-installer \
    && apt-get clean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /tmp/dockerize \
    && curl -L https://github.com/larsks/dockerize/archive/84303318e70d4550334abadad2052a2415b06127.tar.gz \
       | tar xvz -C /tmp/dockerize --strip-components=1 \
    && cd /tmp/dockerize \
    && pip install .

COPY dockerize-phantomjs /bin/dockerize-phantomjs

ENTRYPOINT /bin/dockerize-phantomjs
