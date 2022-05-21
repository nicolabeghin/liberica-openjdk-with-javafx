# liberica-openjdk-with-javafx
Liberica OpenJDK Docker images containing JavaFX

## Docker images
* ALPINE [`nicolabeghin/liberica-openjdk-with-javafx-alpine:17`](https://hub.docker.com/repository/docker/nicolabeghin/liberica-openjdk-with-javafx-alpine)
* CENTOS [`nicolabeghin/liberica-openjdk-with-javafx-centos:17`](https://hub.docker.com/repository/docker/nicolabeghin/liberica-openjdk-with-javafx-centos)
* DEBIAN [`nicolabeghin/liberica-openjdk-with-javafx-debian:17`](https://hub.docker.com/repository/docker/nicolabeghin/liberica-openjdk-with-javafx-debian)
    
## Usage
    docker run --rm -it nicolabeghin/liberica-openjdk-with-javafx-alpine:17 /bin/sh
    docker run --rm -it nicolabeghin/liberica-openjdk-with-javafx-centos:17 /bin/sh
    docker run --rm -it nicolabeghin/liberica-openjdk-with-javafx-debian:17 /bin/sh
    
## Why
Official Liberica OpenJDK images do not contain JavaFX (ref. [GitHub issue](https://github.com/bell-sw/Liberica/issues/84)), making CI/CD difficult to impossible for projects involving JavaFX. 
With this script, the original Dockerfile from Liberica is used to build a Docker image containing JavaFX.
