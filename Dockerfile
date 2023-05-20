FROM openjdk:8-jdk-alpine
WORKDIR /app

COPY target/spring-example-0.0.1-SNAPSHOT.jar /app 


ENTRYPOINT ["java", "-jar", "spring-example-0.0.1-SNAPSHOT.jar"]