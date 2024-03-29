FROM alpine:3.8
MAINTAINER oldiy <oldiy@163.com>

WORKDIR /
ENV NPS_VERSION 0.26.10

RUN set -x && \
	wget --no-check-certificate https://github.com/ehang-io/nps/releases/download/v${NPS_VERSION}/linux_amd64_server.tar.gz && \ 
	mkdir \nps && \
	tar xzf linux_amd64_server.tar.gz -C /nps && \
	cd /nps && \
	mkdir \npsconf && \
	cp conf/* npsconf/ && \
	cd .. && \
	rm -rf *.tar.gz

ADD start.sh /nps/npsconf/start.sh

RUN chmod +x /nps/npsconf/start.sh

VOLUME /nps/conf

CMD /nps/npsconf/start.sh
