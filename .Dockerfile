# For Java 8, try this
FROM openjdk:8-jdk-alpine

# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring-boot-hello-1.0.jar
 
COPY ${JAR_FILE} ./app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]