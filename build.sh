#!/bin/bash


# flavors available at https://github.com/bell-sw/Liberica/tree/master/docker/repos
# debian, centos, alpine-musl
FLAVOR=alpine
JDK_VERSION=17
URL="https://raw.githubusercontent.com/bell-sw/Liberica/master/docker/repos/liberica-openjdk-"

# target DockerHub repository
DOCKERHUB_ACCOUNT=nicolabeghin
PROJECT=liberica-openjdk-with-javafx-${FLAVOR}

# download original Dockerfile and enable back javafx
rm -fr Dockerfile* &> /dev/null
echo "Downloading original Dockerfile from ${URL}${FLAVOR}/${JDK_VERSION}/Dockerfile"
curl ${URL}${FLAVOR}/${JDK_VERSION}/Dockerfile | grep -v javafx > Dockerfile

# enable back javafx
rm Dockerfile-original

# build image
echo "Building tags $DOCKERHUB_ACCOUNT/$PROJECT:${JDK_VERSION}"
docker build -t $DOCKERHUB_ACCOUNT/$PROJECT:${JDK_VERSION} .

# push image to DockerHub
docker push $DOCKERHUB_ACCOUNT/$PROJECT:${JDK_VERSION}