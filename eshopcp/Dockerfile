FROM mhart/alpine-node:6.17.0

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.schema-version="1.0" \
  org.label-schema.name="eshopcp" \
  org.label-schema.description="Eshopcp Drupal 8 theme image" \
  org.label-schema.vcs-url="https://github.com/hog-seruj/docker-frontend" \
  maintainer="Sergiy Borodylin <hogseruj1@gmail.com>"

VOLUME /work
WORKDIR /work

ENV HOME "/tmp"
ENV PACKAGES "g++ git python2 make"

COPY package.json /
COPY package-lock.json /

RUN mkdir /fake-home && \
    chmod 777 /fake-home & \
    apk add --no-cache $PACKAGES && \
    cd / && \
    npm config set python /usr/bin/python && \
    npm install && \
    npm install -g gulp && \
    apk del --no-cache --purge $PACKAGES

COPY docker-entrypoint.sh /usr/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["gulp"]

