# Use an official OpenJDK image
FROM openjdk:17

# Set working directory inside container
WORKDIR /app

# Copy Java source code
COPY src/main/java /app/src/main/java

# Compile Java source into /app/classes
RUN javac -d /app/classes /app/src/main/java/com/example/*.java

# Run the Java application
CMD ["java", "-cp", "/app/classes", "com.example.HelloWorldServer"]

