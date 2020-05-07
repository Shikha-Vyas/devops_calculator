FROM alpine

WORKDIR /build
# File Author
MAINTAINER Shikha Vyas

# Copies the files from the source on the host into the container’s set destination
ADD /build/target/devops_calculator-1.0-SNAPSHOT.jar .

