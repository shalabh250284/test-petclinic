FROM amazonlinux:latest
MAINTAINER "Shalabh Kumar"

RUN yum install -y java-1.8.0-openjdk.x86_64 \
    && mkdir -p /opt

COPY target/spring-petclinic-1.5.1.jar /opt/spring-petclinic-1.5.1.jar

EXPOSE 8080

CMD ["java","-jar", "/opt/spring-petclinic-1.5.1.jar"]