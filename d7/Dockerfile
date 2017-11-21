FROM mhart/alpine-node:7

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.schema-version="1.0" \
  org.label-schema.name="skilld-d7" \
  org.label-schema.description="Skilld base Drupal 7 frontend image - Alpine: npm, gulp, compass-importer, webpack3 & libsass" \
  org.label-schema.vcs-url="https://github.com/skilld-labs/docker-frontend" \
  maintainer="Andy Postnikov <andypost@ya.ru>"

ENV NPM_PACKAGES "node-sass \
  webpack-dev-server \
  webpack-stream \
  babel-core \
  babel-loader \
  babel-plugin-transform-runtime \
  babel-polyfill \
  babel-preset-es2015 \
  breakpoint-sass \
  chroma-sass \
  compass-importer \
  del \
  eslint \
  glob \
  gulp \
  gulp-concat \
  gulp-eslint \
  gulp-if \
  gulp-sass \
  gulp-autoprefixer \
  gulp-sass-lint \
  gulp-sourcemaps \
  gulp-uglify \
  gulp.spritesmith \
  normalize-scss \
  sass-rem \
  sass-toolkit \
  script-loader \
  typey \
  yargs \
  node-sass-asset-functions"

RUN set -e \
  && apk add --no-cache git \
  && npm --unsafe-perm install -g \
    LPGhatguy/node-sass-glob \
    webpack@3 susy@2 \
    $NPM_PACKAGES \
  && apk del --no-cache --purge git \
  && rm -rf /root/.npm /root/.config /tmp/npm*

VOLUME /work
WORKDIR /work

COPY docker-entrypoint.sh /usr/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["gulp"]
