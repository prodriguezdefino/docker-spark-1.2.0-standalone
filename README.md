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

Now if we run ```docker run -i -t <IMAGE-ID> /etc/bootstrap.sh -bash``` we will be able to access to the container instance. Finally we need to run the Spark console with the command:
```
spark-shell --master yarn-client --driver-memory 1g --executor-memory 1g --executor-cores 1
```
and then scala console will show.
