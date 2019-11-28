FROM openjdk:8u121-jre-alpine
ADD target/routing-service-0.0.1-SNAPSHOT.jar mytask.jar
EXPOSE 8080
ENTRYPOINT ["sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /mytask.jar"]
