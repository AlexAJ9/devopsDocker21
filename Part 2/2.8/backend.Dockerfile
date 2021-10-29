FROM golang:1.16
WORKDIR /usr/src/app
COPY /example-backend .
ENV REQUEST_ORIGIN=http://web-frontend:5000
RUN go build
CMD ./server