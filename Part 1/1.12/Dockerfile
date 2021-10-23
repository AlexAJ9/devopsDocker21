FROM node:16
WORKDIR /usr/src/app
COPY /example-frontend .
RUN npm install && npm run build \
    && npm install -g serve
CMD ["serve", "-s", "-l", "5000", "build"]
