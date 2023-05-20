FROM openjdk:8-jdk-alpine
WORKDIR /app

COPY target/spring-boot-hello-world-example-0.0.1-SNAPSHOT.jar /app 


ENTRYPOINT ["java", "-jar", "spring-boot-hello-world-example-0.0.1-SNAPSHOT.jar"]
