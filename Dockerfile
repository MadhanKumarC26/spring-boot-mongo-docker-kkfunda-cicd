

FROM eclipse-temurin:8-jdk

# Install packages using apt
RUN apt-get update && apt-get install -y curl unzip

WORKDIR /app
COPY target/spring-boot-mongo-1.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]










