FROM openjdk:17-jdk-slim

MAINTAINER sankhadip@mandal

COPY target/account-service-0.0.1-SNAPSHOT.jar account-service-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "account-service-0.0.1-SNAPSHOT.jar"]
