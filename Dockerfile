FROM nginx:alpine

ADD . /usr/share/nginx/html
RUN apk --update add npm \
    && cd /usr/share/nginx/html \
    && npm install \
    && node_modules/gulp/bin/gulp.js \
    && rm -rf node_modules .travis.yml gulpfile.js LICENSE README.md package.json package-lock.json \
    && apk del npm \
    && chown -R nginx:nginx /usr/share/nginx/html
