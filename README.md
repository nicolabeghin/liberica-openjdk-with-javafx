# liberica-openjdk-with-javafx
Liberica OpenJDK Docker images containing JavaFX

## DockerHub repository
https://hub.docker.com/repository/docker/nicolabeghin/liberica-openjdk-with-javafx-alpine

## Usage
    docker run --rm -it nicolabeghin/liberica-openjdk-with-javafx-alpine:17 /bin/sh
## Why
Official Liberica OpenJDK images do not contain JavaFX (ref. [GitHub issue](https://github.com/bell-sw/Liberica/issues/84)), making CI/CD difficult to impossible for projects involving JavaFX. 
With this script, the original Dockerfile from Liberica is used to build a Docker image containing JavaFX.
