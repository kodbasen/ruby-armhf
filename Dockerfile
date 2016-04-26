FROM hypriot/rpi-alpine-scratch:v3.2

MAINTAINER larmog@kodbasen.org

ENV VERSION=2.2.3p173

RUN apk update && \
  apk upgrade && \
  apk add bash build-base ca-certificates ruby ruby-dev ruby-irb && \
  gem update --system --no-document && \
  apk del build-base && \
  rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

CMD ["ruby", "--version"]
