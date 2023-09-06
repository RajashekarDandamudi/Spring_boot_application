# Spring_boot_application

  * This application we are going to containerize.

# Step 1 : Create and download a Spring Boot application with Spring initializr.

  * Project zip file will be downloaded. Extract the zip and import to VS Code.
  
# Step 2: Customize the application as per your needs and make a complete application.

  * Add an index.html to the main/resources/static folder.
  * Run the application.
  * Verify the application is running or not.
  * if the application works fine in the localhost next we are going to containerize the application.
  * In VS Code run as maven build.
  * It will create a jar file, which is used for the deployment of an application.
  
# Step 3: Write a Dockerfile for containerizing our application.

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
    
# Step 4: Create a Docker image from the Dockerfile.

  Run the build command to create a docker image from the docker file
    sudo docker build -t spring-boot-app .
  Check the image is created or not
    sudo docker images
      
# Step 5 : Push the Docker image to Dockerhub.

  * First tag the image with username of the github account
      docker tag spring-boot-app-image github(username)/spring-boot-app
    
  * docker login (give the username and password for docker hub)
      
  * docker push (pushing image to dockerhub)
      docker push github(username)/spring-boot-app
    
# Step 6 : make sure your containerized application in the runnable state.

  * Run the application as container in detached mode and on system port 8090.
      docker run -d -p 8090:8080 spring-boot-app-image
  * Then check if the container is created or not.
      docker ps (command will give you the created container id)

# Then go to the browser and check that application is available in the mapped system port(8090)
  * http://publicip:8090
    Application successfully deployed in the container
