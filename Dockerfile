FROM alpine

# File Author
MAINTAINER Shikha Vyas

# Set Working Directory
WORKDIR /usr/local

# Copies the files from the source on the host into the container’s set destination
ADD target/calculator-1.0-SNAPSHOT.jar .

