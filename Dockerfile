FROM openjdk:11-jre-slim

 

# Set the working directory inside the container
WORKDIR /app

 

# Copy the built JAR file from your Gradle project to the container
COPY build/libs/*.jar app.jar

 

# Expose the port your application will run on
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
