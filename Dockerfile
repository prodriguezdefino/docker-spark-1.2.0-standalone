## Apache Spark Standalone image
#
FROM prodriguezdefino/spark-1.2.0-base
MAINTAINER prodriguezdefino prodriguezdefino@gmail.com

CMD ["/etc/bootstrap.sh", "-d"]
