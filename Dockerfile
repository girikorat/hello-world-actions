# Use OpenJDK 17
FROM eclipse-temurin:17-jdk-alpine

# Create app directory
WORKDIR /app

# Copy Java source
COPY src ./src

# Compile Java code
RUN javac src/main/java/com/example/HelloWorld.java

# Run Java app
CMD ["sh", "-c", "java -cp /app/src/main/java com.example.HelloWorld && tail -f /dev/null"]

