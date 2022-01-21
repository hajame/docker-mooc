To build and push the image of any repository:

```
docker build . -t imagebuilder:latest

docker run -itv /var/run/docker.sock:/var/run/docker.sock imagebuilder:latest REPOSITORY_LINK
```

It performs an interactive `docker login` so you have to provide your dockerhub credentials. The image is pushed as username/temp_image:latest