FROM golang:1.16
WORKDIR /usr/src/app
COPY /example-backend .
ENV PORT=8080
RUN go build
CMD ./server