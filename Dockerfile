FROM docker:latest

LABEL version="1.0"
LABEL description="Образ docker с ипортом ключа rsa"

MAINTAINER Aleksey Gulyaev "ag@napoleon.it"

ENV DEBIAN_FRONTEND noninteractive

RUN apk add --no-cache openssh && \
	ssh-agent /bin/sh

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]