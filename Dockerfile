FROM openjdk:8-jdk-alpine
VOLUME /tmp /apps/logs
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
