# syntax=docker/dockerfile:1

# FROM <image>
# FROM eclipse-temurin:<version>-alpine; if you want Alpine Linux project
# FROM amazoncorretto:<version>-alpine; if you want Alpine Linux project
# https://hub.docker.com/_/openjdk/ (DEPRECATED)
# https://hub.docker.com/_/eclipse-temurin (ALTERNATIVE #1)
# https://hub.docker.com/_/amazoncorretto (ALTERNATIVE #2)
FROM eclipse-temurin:19

# set a directory for the app
# WORKDIR <directory>
WORKDIR /app

# copy specific files to the container
# COPY <src> <dest>
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# install app dependencies
# RUN <command>
RUN ./mvnw dependency:resolve

COPY src ./src

# tell Docker what command we want to run when our image is executed inside a container
# CMD <command>
CMD ["./mvnw", "spring-boot:run"]

# tell the container which port number to expose
EXPOSE 3306

# final configuration
# ENV
# EXPOSE
# CMD

# ENTRYPOINT ["java", "-jar", "./src/main/java/com/technews/TechNewsJavaApiApplication.java"]

# copy all the files to the container
# COPY . .