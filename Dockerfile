FROM alpine

# File Author
MAINTAINER Shikha Vyas
WORKDIR /usr/local

# Copies the files from the source on the host into the container’s set destination
COPY refs/remotes/origin/origin/master/target .

