FROM alpine

# File Author
MAINTAINER Shikha Vyas
WORKDIR /usr/local

# Copies the files from the source on the host into the container’s set destination
COPY target/devops_calculator-1.0-SNAPSHOT.jar /usr/local

