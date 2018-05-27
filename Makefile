VERSION=`cat VERSION`
DOCKER_IMAGE="repejota/docker-alpine-dotfiles"

.PHONY: run
run: docker-build
run:	## Run an instance of the container
	docker run -ti --rm \
		--name docker-alpine-dotfiles \
		${DOCKER_IMAGE}

.PHONY: docker-build
docker-build:	## Builds container and tag resulting image
	docker build --rm --force-rm .
	docker tag ${DOCKER_IMAGE} ${DOCKER_IMAGE}:$(VERSION)

.PHONY: docker-publish
docker-publish:	## Publishes container image
	docker push ${DOCKER_IMAGE}:$(VERSION)
	docker push ${DOCKER_IMAGE}:latest

include Makefile.help.mk
