FROM eclipse-temurin:17-jdk-alpine

# Copy source code
COPY ./src /app/src
WORKDIR /app

# Compile Java into /app/classes
RUN javac -d classes src/main/java/com/example/HelloWorldServer.java

# Run the HTTP server
CMD ["java", "-cp", "classes", "com.example.HelloWorldServer"]

