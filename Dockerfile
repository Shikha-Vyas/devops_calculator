FROM alpine

# File Author
MAINTAINER Shikha Vyas
WORKDIR /usr/local

# Copies the files from the source on the host into the container’s set destination
COPY /var/lib/jenkins/workspace/calculator_devops2/target/devops_calculator-1.0-SNAPSHOT.jar .

