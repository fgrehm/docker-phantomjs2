# Based on https://github.com/rosenhouse/phantomjs2/blob/1df72b25bc231693c3d059d71ec40cd6e27d6872/Dockerfile
FROM ubuntu:14.04

# Dependencies we just need for building phantomjs
ENV buildDependencies\
  wget unzip python build-essential g++ flex bison gperf\
  ruby perl libsqlite3-dev libssl-dev libpng-dev

# Dependencies we need for running phantomjs
ENV phantomJSDependencies\
  libicu-dev libfontconfig1-dev libjpeg-dev libfreetype6

# Installing phantomjs
RUN \
    # Installing dependencies
    apt-get update -yqq \
&&  apt-get install -fyqq ${buildDependencies} ${phantomJSDependencies}\
    # Downloading src, unzipping & removing zip
&&  mkdir phantomjs \
&&  cd phantomjs \
&&  wget https://github.com/ariya/phantomjs/archive/54a54dc0687a4b93562285d4f632dcafe2c7bf4f.zip -O phantomjs.zip \
&&  unzip phantomjs.zip \
&&  rm -rf /phantomjs/phantomjs.zip \
    # Building phantom
&&  mv phantomjs-* phantomjs \
&&  cd phantomjs \
&&  ./build.sh --confirm --silent \
    # Removing everything but the binary
&&  ls -A | grep -v bin | xargs rm -rf \
    # Symlink phantom so that we are able to run `phantomjs`
&&  ln -s /phantomjs/phantomjs/bin/phantomjs /usr/local/share/phantomjs \
&&  ln -s /phantomjs/phantomjs/bin/phantomjs /usr/local/bin/phantomjs \
&&  ln -s /phantomjs/phantomjs/bin/phantomjs /usr/bin/phantomjs \
    # Removing build dependencies, clean temporary files
&&  apt-get purge -yqq ${buildDependencies} \
&&  apt-get autoremove -yqq \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    # Checking if phantom works
&&  phantomjs -v

CMD \
    echo "phantomjs binary is located at /phantomjs/phantomjs-2.0.0/bin/phantomjs"\
&&  echo "just run 'phantomjs' (version `phantomjs -v`)"
