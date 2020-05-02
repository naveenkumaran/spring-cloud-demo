FROM adoptopenjdk:11-jre-hotspot
MAINTAINER "naveenkumaran.a@gmail.com"

EXPOSE 8080
COPY ./ ./
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar
WORKDIR /opt/
ADD ${JAR_FILE} demo.jar
ENTRYPOINT ["java", "jar", "/demo.jar"]