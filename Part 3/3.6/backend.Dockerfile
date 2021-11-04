FROM golang:1.16-alpine
WORKDIR /usr/src/app
RUN adduser -D app
COPY --chown=app /example-backend .
RUN go build
USER app
CMD ./server