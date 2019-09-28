docker build . -t "bergloman/psl:latest"
docker push "bergloman/psl:latest"

docker build . -t "bergloman/psl:2.1.0"
docker push "bergloman/psl:2.1.0"
