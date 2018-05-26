VERSION=`cat VERSION`
DOCKER_IMAGE="repejota/docker-alpine-dotfiles"

.PHONY: docker
docker: docker-build docker-publish

.PHONY: docker-build
docker-build:	## Builds container and tag resulting image
	docker build --force-rm --tag ${DOCKER_IMAGE} .
	docker tag ${DOCKER_IMAGE} ${DOCKER_IMAGE}:$(VERSION)

.PHONY: docker-publish
docker-publish:	## Publishes container image
	docker push ${DOCKER_IMAGE}:$(VERSION)
	docker push ${DOCKER_IMAGE}:latest

include Makefile.help.mk
