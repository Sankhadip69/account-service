FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy your Spring Boot application JAR file into the container
COPY target/account-service-0.0.1-SNAPSHOT.jar account-service-0.0.1-SNAPSHOT.jar

# Copy the "wait-for-it" script into the container
COPY wait-for-it.sh /wait-for-it.sh

# Make the "wait-for-it" script executable
RUN chmod +x /wait-for-it.sh

# Expose the port
EXPOSE 8080

# Create an entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Set the custom entrypoint
ENTRYPOINT ["/entrypoint.sh"]
