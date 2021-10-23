FROM ubuntu:18.04
WORKDIR /usr/src/app
COPY . .
RUN  apt-get update -y && apt-get install curl -y
CMD ./script.sh
