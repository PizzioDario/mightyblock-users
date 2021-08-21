FROM openjdk:11
ENV JAVA_OPTS=""
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
VOLUME /tmp
EXPOSE 8090
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app.jar" ]

