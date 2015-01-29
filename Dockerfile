## Apache Spark Standalone image
#
FROM prodriguezdefino/sparkbase:1.2.0
MAINTAINER prodriguezdefino prodriguezdefino@gmail.com

CMD ["/etc/bootstrap.sh", "-d"]
