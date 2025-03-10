# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim
MAINTAINER authors="Grupp 2:s Backend-Team!!!"

# Set the working directory in the container
WORKDIR /app

# Copy the project’s jar file into the container at /app
COPY target/antons-skafferi-spring-0.0.1-SNAPSHOT.jar app.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]