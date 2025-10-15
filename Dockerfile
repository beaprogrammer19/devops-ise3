# Use OpenJDK 21 as base image
FROM openjdk:21-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy all project files into the container
COPY . /app

# Compile your Java file
RUN javac Main.java

# Run the compiled Java program
CMD ["java", "Main"]
