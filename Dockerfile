FROM adoptopenjdk/openjdk11:debianslim-jre

RUN mkdir /opt/app

ARG JAR_FILE
ADD target/${JAR_FILE} /opt/app/application.jar

CMD ["java", "-jar", "/opt/app/application.jar"]
