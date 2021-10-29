FROM node:16
WORKDIR /usr/src/app
COPY /example-frontend .
ENV REACT_APP_BACKEND_URL=http://localhost:80/api
RUN npm install && npm run build \
    && npm install -g serve
CMD ["serve", "-s", "-l", "5000", "build"]
