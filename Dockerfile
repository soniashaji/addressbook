FROM jetty:9-jre8-openjdk
RUN apt-get update && \
    apt-get install -y maven
COPY --from=build target/*.war /var/lib/jetty/webapps
EXPOSE 8081
CMD mvn jetty:run
