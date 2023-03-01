# syntax=docker/dockerfile:1
# FROM <image>
# FROM eclipse-temurin:<version>-alpine; if you want Alpine Linux project
# FROM amazoncorretto:<version>-alpine; if you want Alpine Linux project
# https://hub.docker.com/_/openjdk/ (DEPRECATED)
# https://hub.docker.com/_/eclipse-temurin (ALTERNATIVE #1)
# https://hub.docker.com/_/amazoncorretto (ALTERNATIVE #2)
FROM eclipse-temurin:8

# install app dependencies
# RUN <command>
RUN addgroup -S spring & adduser -S spring -G spring
USER spring:spring

# WORKDIR <directory>

# install app
# COPY <src> <dest>
COPY . .

# CMD <command>

# final configuration
# ENV
# EXPOSE
# CMD

# TELL THE CONTAINER WHICH PORT NUMBER TO EXPOSE
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "./src/main/java/com/technews/TechNewsJavaApiApplication.java"]

FROM python:3.87

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# tell the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]