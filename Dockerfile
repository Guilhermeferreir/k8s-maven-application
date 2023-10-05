FROM openjdk:17-oracle
RUN mkdir app
ADD target/*.jar app/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app/app.jar"]