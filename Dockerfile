FROM alpine

# File Author
MAINTAINER Shikha Vyas
WORKDIR /usr/local

# Copies the files from the source on the host into the container’s set destination
COPY /Downloads/devops_calculator-master/target/devops_calculator-1.0-SNAPSHOT.jar .

