FROM alpine:edge
LABEL maintainer Raül Perez <repejota@gmail.com>

RUN addgroup -g 1000 user \
    && adduser -D -h /home/user -G user -u 1000 user

RUN apk --no-cache add \
	ca-certificates \
	git \
	vim

USER user
ENV HOME /home/user

ENV LANG C.UTF-8

CMD ["bash", "-l"]
