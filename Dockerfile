# Use OpenJDK 17 runtime
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy your Java file
COPY src/main/java/com/example/HelloWorld.java .

# Compile the Java file
RUN javac HelloWorld.java

# Run the Java class
CMD ["java", "HelloWorld"]

