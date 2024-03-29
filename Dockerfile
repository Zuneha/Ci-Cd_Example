FROM maven:3.6.3-jdk-8 AS maven
LABEL MAINTAINER="zunehakhanam@gmail.com"

WORKDIR /app
COPY . /app
# Compile and package the application to an executable JAR
RUN mvn package


FROM openjdk:8-jdk-alpine
WORKDIR /var/app

COPY  --from=maven /app/target/spring-boot-hello-world-example-0.0.1-SNAPSHOT.jar /var/app/
ENV JAVA_OPTS=""
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "spring-boot-hello-world-example-0.0.1-SNAPSHOT.jar"]
