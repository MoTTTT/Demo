FROM openjdk:8-jvm-alpine
VOLUME /tmp /apps/logs
VOLUME /tmp
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
