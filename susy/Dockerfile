FROM mhart/alpine-node:7

MAINTAINER Sergiy Borodulin

VOLUME /work
WORKDIR /work

ENV NPM_PACKAGES "susy"

RUN apk add --no-cache make g++ python \
  && npm install -g \
  gulp \
  gulp-sass \
  && apk del --purge make g++ python

COPY docker-entrypoint.sh /usr/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["gulp"]
