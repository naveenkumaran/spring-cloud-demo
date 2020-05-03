FROM openjdk:11
MAINTAINER "naveenkumaran.a@gmai.com"
EXPOSE 8080
WORKDIR /opt
COPY ./ ./
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} demo.jar
ENTRYPOINT ["java", "-jar", "/opt/demo.jar"]
