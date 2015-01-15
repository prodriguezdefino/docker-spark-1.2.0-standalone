# Docker image for standalone Spark testing
A Spark v1.2.0 Docker image for local testing. It's based on the image from prodriguezdefino/hadoop-2.6.0-base (can be found [here](https://github.com/prodriguezdefino/docker-hadoop-2.6.0-base)).

In order to start using the Spark console with this image we can build the image with (after checking out the repo):

```
docker build -t "NAME-OF-YOUR-IMAGE" .
```

Then find image's ID with:

```
docker images
```

Finally running 

```docker run -i -t <IMAGE-ID> /etc/bootstrap.sh -bash``` 

we will be able to access the interactive console. 
