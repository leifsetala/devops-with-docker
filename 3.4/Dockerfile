FROM docker:latest

RUN apk add --no-cache git bash

COPY builder.sh /builder.sh

ENTRYPOINT ["/builder.sh"]

