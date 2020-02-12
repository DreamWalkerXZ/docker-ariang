FROM alpine:latest

LABEL maintainer="dreamwalkerxz@outlook.com"

RUN apk update \
	&& apk add --no-cache --update darkhttpd \
	&& mkdir aria-ng \
	&& wget --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/1.1.4/AriaNg-1.1.4.zip \
	&& unzip AriaNg-1.1.4.zip -d aria-ng \
	&& rm -rf AriaNg-1.1.4.zip

COPY init.sh /init.sh

WORKDIR /
EXPOSE 80

CMD ["/init.sh"]
