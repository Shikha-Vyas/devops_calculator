FROM alpine

# File Author
MAINTAINER Shikha Vyas
WORKDIR /usr/local
EXPOSE 8080
# Copies the files from the source on the host into the container’s set destination
COPY target/devops_calculator-1.0-SNAPSHOT.jar .

