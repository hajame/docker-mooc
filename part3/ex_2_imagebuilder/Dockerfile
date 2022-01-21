FROM ubuntu:18.04

VOLUME [ "/var/run/docker.sock:/var/run/docker.sock" ]
RUN apt-get update && apt-get install -y git curl apt-utils sed
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh

WORKDIR /app
COPY . . 
ENV LC_ALL=C.UTF-8

ENTRYPOINT ["/app/build.sh"]