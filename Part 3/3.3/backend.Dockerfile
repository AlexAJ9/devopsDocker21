FROM golang:1.16
WORKDIR /usr/src/app
COPY --chown=app /example-backend .
RUN go build
RUN useradd -m app
USER app
CMD ./server