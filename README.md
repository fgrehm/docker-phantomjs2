# Minimum Viable Docker Image for PhantomJS 2.0

[![](https://badge.imagelayers.io/fgrehm/phantomjs2:latest.svg)](https://imagelayers.io/?images=fgrehm/phantomjs2:latest 'Get your own badge on imagelayers.io')

The smallest PhantomJS 2.0 image (~100mb) you'll find on Docker Hub.

:warning: This is an experiment. Some initial testing showed me that the [examples]()
provided by the PhantomJS project itself are working fine but it doesn't mean
it will work for all use cases :warning:

## Usage

```sh
docker run -ti --rm fgrehm/phantomjs2 --help
```

## Build it yourself

```sh
git clone https://github.com/fgrehm/docker-phantomjs2 && cd docker-phantomjs2
make build.local
```

## Acknowledgements

* https://github.com/rosenhouse/phantomjs2 for providing a precompiled phantomjs
  2.0 binary
* http://blog.oddbit.com/2015/02/05/creating-minimal-docker-images/ for inspiration
  on keeping images as small as possible
* https://github.com/larsks/dockerize for making this so easy
