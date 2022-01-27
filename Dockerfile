FROM openjdk:11-jdk

COPY ./deploy/*.jar application.jar

EXPOSE 8080

CMD ["java", "-jar", "application.jar"]
