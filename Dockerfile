FROM amazoncorretto:17.0.11

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} configuration_service.jar

ENTRYPOINT ["java", "-jar", "/configuration_service.jar"]

EXPOSE 9296