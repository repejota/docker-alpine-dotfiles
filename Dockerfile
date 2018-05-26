FROM alpine:edge
LABEL maintainer Raül Perez <repejota@gmail.com>

RUN addgroup -g 1000 user \
    && adduser -D -h /home/user -G user -u 1000 user

RUN apk --no-cache add \
	ca-certificates \
	git \
	vim \
  bash

USER user
WORKDIR /home/user

RUN git clone https://github.com/repejota/dotfiles.git && \
  cd dotfiles && git submodule update --init --recursive && cd .. && \
  ln -s ./dotfiles/.gitconfig && \
  ln -s ./dotfiles/.inputrc && \
  ln -s ./dotfiles/.profile && \
  ln -s ./dotfiles/.bin && \
  ln -s ./dotfiles/.bash && \
  ln -s ./dotfiles/.bashrc && \
  ln -s ./dotfiles/.bash_profile && \
  ln -s ./dotfiles/.config

RUN git clone https://github.com/repejota/dotvim.git && \
  ln -s ./dotvim/.vimrc && \
  sh ./dotvim/install.sh

CMD ["bash", "-l"]
