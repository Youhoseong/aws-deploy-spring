FROM openjdk:11-jdk

COPY ./build/libs/aws-cicd-spring-0.0.1-SNAPSHOT.jar application.jar

EXPOSE 8080

CMD ["java", "-jar", "application.jar"]
