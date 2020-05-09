FROM openjdk:8-jdk-alpine

# File Author
MAINTAINER SHIKHA VYAS

COPY input_file .

# Copies the files from the source on the host into the container’s set destination
COPY ["target/devops_calculator-1.0-SNAPSHOT.jar","input_file","./"]

#ENTRYPOINT runs the as the first command when container is created
ENTRYPOINT ["java", "-jar", "devops_calculator-1.0-SNAPSHOT.jar" , "<" ,"input_file"]

