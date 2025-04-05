# Use a lightweight JDK base image
FROM openjdk:17-jdk-slim


# Set working directory inside container
WORKDIR /app

# Copy the jar file into the container
COPY target/*.jar app.jar


# Expose the port the Spring Boot app runs on
EXPOSE 8080

# Command to run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
