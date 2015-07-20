build:
	docker build -t fgrehm/phantomjs2 .

build.local: dockerize
	docker build -t fgrehm/phantomjs2 -f Dockerfile.localbuild .

dockerize: dockerize.build
	docker run -ti --rm \
		-v `pwd`:/workspace \
		-w /workspace \
		fgrehm/phantomjs2-dockerize

dockerize.build:
	docker build -t fgrehm/phantomjs2-dockerize -f Dockerfile.dockerize .
