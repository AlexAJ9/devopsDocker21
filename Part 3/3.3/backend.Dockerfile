FROM golang:1.16
WORKDIR /usr/src/app
RUN useradd -m app
COPY --chown=app /example-backend .
RUN go build
USER app
CMD ./server