FROM openjdk:11
MAINTAINER "naveenkumaran.a@gmai.com"
EXPOSE 8080
RUN mkdir -p /opt/app/
WORKDIR /opt/app
COPY ./ ./
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} demo.jar
ENTRYPOINT ["java", "-jar", "/opt/app/demo.jar"]
