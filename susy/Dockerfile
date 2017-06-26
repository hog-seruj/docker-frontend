FROM skilldlabs/frontend:zen-next

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.schema-version="1.0" \
  org.label-schema.name="zen-frontend-env" \
  org.label-schema.description="Zen theme for Drupal - npm, gulp, bower, suzy & libsass" \
  org.label-schema.vcs-url="https://github.com/skilld-labs/docker-frontend" \
  maintainer="Sergiy Borodulin <hogseruj1@gmail.com>"

ENV NPM_PACKAGES="$NPM_PACKAGES susy"

RUN npm install -g susy
