FROM golang:1.16
WORKDIR /usr/src/app
COPY /example-backend .
RUN go build
CMD ./server