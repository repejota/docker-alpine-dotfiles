[![Docker Stars](https://img.shields.io/docker/stars/repejota/docker-alpine-dotfiles.svg?style=flat-square)](https://hub.docker.com/r/repejota/docker-alpine-dotfiles/)
[![Docker Pulls](https://img.shields.io/docker/pulls/repejota/docker-alpine-dotfiles.svg?style=flat-square)](https://hub.docker.com/r/repejota/docker-alpine-dotfiles/)


# dotfiles Docker Alpine image

This image is based on Alpine Linux image, which is only a 5MB image, and
contains my personal dotfiles and dotvim repositories configured for the default
container user.

Download size of this image is only:

[![](https://images.microbadger.com/badges/image/repejota/docker-alpine-dotfiles.svg)](http://microbadger.com/images/repejota/docker-alpine-dotfiles "Get your own image badge on microbadger.com")

# Quick Start

```bash
$  make
docker:          Build and publish the container to hub.docker.com
docker-build:    Builds container and tag resulting image
docker-publish:  Publishes container image
help:   Show this help ( default )
```
