FROM node:16-alpine
WORKDIR /usr/src/app
RUN adduser -D app
COPY --chown=app /example-frontend .
RUN npm install && npm run build \
    && npm install -g serve
USER app
CMD ["serve", "-s", "-l", "5000", "build"]
