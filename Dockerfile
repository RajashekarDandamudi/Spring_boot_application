# use an openjdk base image with JDK

FROM openjdk:17

# set the working directory in the container

WORKDIR /app

# copy the JAR file into the container

COPY demo_DockerProject-0.0.1-SNAPSHOT.jar /app/spring-boot-app.jar

# expose the container port

EXPOSE 8080

# command to run the application

CMD ["java", "-jar", "spring-boot-app.jar"]
