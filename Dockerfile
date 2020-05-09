FROM alpine

# File Author
MAINTAINER Shikha Vyas
WORKDIR /usr/local
EXPOSE 8080
# Copies the files from the source on the host into the container’s set destination
COPY /var/lib/jenkins/workspace/calculator_devops2/target/cal .

