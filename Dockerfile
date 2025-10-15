# Use OpenJDK 21 runtime
FROM openjdk:21-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy all files into container
COPY . /app

# Compile Java source code
RUN javac src/Main.java

# Run the Java program
CMD ["java", "-cp", "src", "Main"]
