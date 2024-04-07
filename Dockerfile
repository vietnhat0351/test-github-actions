FROM openjdk:17-alpine
WORKDIR /app
COPY target/*.jar ./*.jar
EXPOSE 8080
CMD ["java", "-jar", "server.jar"]
