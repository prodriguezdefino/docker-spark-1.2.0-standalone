## Docker image for standalone Spark testing
An Apache Spark v1.2.0 Docker image for local testing. It's based on the image from prodriguezdefino/sparkbase:1.2.0 (can be found [here](https://github.com/prodriguezdefino/docker-spark-base)).

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
and then Scala's interactive console will show. We are using Yarn task distribution in the example and we can tweak memory of the driver, the executor and the amount of workers as pleased.

