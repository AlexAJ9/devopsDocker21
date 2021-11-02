FROM node:16
WORKDIR /usr/src/app
COPY --chown=app /example-frontend .
RUN npm install && npm run build \
    && npm install -g serve
RUN useradd -m app
USER app
CMD ["serve", "-s", "-l", "5000", "build"]
