FROM docker:latest

LABEL version="1.0"
LABEL description="Образ docker с ипортом ключа rsa"

MAINTAINER Aleksey Gulyaev "ag@napoleon.it"

ENV DEBIAN_FRONTEND noninteractive

RUN apk add --no-cache openssh-client git && \
	git config --global user.email "gitlab-access@gitlab.itnap.ru" && \
  	git config --global user.name "gitlab-access" && \
  	mkdir -p ~/.ssh && \
  	echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config && \
  	echo -e "Host gitlab.itnap.ru\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]