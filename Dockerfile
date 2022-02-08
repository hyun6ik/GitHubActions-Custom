FROM alpine

RUN apk update && apk upgrade && apk add curl

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]