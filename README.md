rm -rf dockerized-phantomjs/ && \
dockerize -n -o dockerized-phantomjs \
          -e $(which phantomjs) \
          -a /bin/dash /bin/sh \
          -a /etc/fonts /etc  \
          -a /etc/ssl /etc  \
          --verbose \
          $(which phantomjs) \
          /usr/bin/curl

# TODO: Need to make it work with https
# TODO: Remove dash and curl (but keep things working)
















docker run -ti --rm -v `pwd`:/workspace -w /workspace rosenhouse/phantomjs2 bash

apt-get update && apt-get install python-pip curl rsync && \
cd dockerize && pip install . && cd ..

rm -rf dockerized-phantomjs && \
dockerize -n -o dockerized-phantomjs \
	-a /bin/dash /bin/sh \
	-e $(which phantomjs) \
  --verbose \
	--filetools \
  $(which phantomjs) \
	/usr/bin/curl \
	/usr/sbin/arpd \
	/usr/sbin/bridge \
	/usr/sbin/cbq \
	/usr/sbin/ctstat \
	/usr/sbin/genl \
	/usr/sbin/ifcfg \
	/usr/sbin/ifstat \
	/usr/sbin/ip \
	/usr/sbin/lnstat \
	/usr/sbin/nstat \
	/usr/sbin/routef \
	/usr/sbin/routel \
	/usr/sbin/rtacct \
	/usr/sbin/rtmon \
	/usr/sbin/rtpr \
	/usr/sbin/rtstat \
	/usr/sbin/ss \
	/usr/sbin/tc \
	/usr/bin/ping \
	/usr/bin/ping6 \
	/usr/bin/tracepath \
	/usr/bin/tracepath6 \
	/usr/sbin/arping \
	/usr/sbin/clockdiff \
	/usr/sbin/ifenslave \
	/usr/sbin/ping6 \
	/usr/sbin/rdisc \
	/usr/sbin/tracepath \
	/usr/sbin/tracepath6 \
	/usr/bin/netstat \
	/usr/sbin/arp \
	/usr/sbin/ether-wake \
	/usr/sbin/ifconfig \
	/usr/sbin/ipmaddr \
	/usr/sbin/iptunnel \
	/usr/sbin/mii-diag \
	/usr/sbin/mii-tool \
	/usr/sbin/nameif \
	/usr/sbin/plipconfig \
	/usr/sbin/route \
	/usr/sbin/slattach \
	/usr/bin/host


cd dockerized-phantomjs && docker build -t remove . && cd ..
docker run -ti -v `pwd`:/workspace --rm remove /workspace/testing.js http://www.terra.com.br /workspace/output.png
