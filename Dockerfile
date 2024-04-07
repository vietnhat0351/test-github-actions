FROM maven:3.8.4-openjdk-17
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean install

# Stage 2: Run the application
FROM openjdk:17-alpine
WORKDIR /app
COPY target/*.jar ./*.jar
EXPOSE 8080
CMD ["java", "-jar", "server.jar"]
