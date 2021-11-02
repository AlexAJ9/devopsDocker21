FROM alpine:3.10
RUN apk add --update docker openrc
RUN rc-update add docker boot
RUN apk add git
WORKDIR /usr/src/app
COPY s.sh .
CMD ./s.sh