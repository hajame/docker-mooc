#!/bin/bash
git clone $1 repo
cd repo

docker login

docker build -t $(docker info | sed '/Username:/!d;s/.* //')/temp_image:latest .
docker push $(docker info | sed '/Username:/!d;s/.* //')/temp_image:latest