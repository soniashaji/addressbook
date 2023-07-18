FROM jetty:9-jre8-openjdk
RUN apt-get update && apt-get install -y maven
COPY target/*.war /var/lib/jetty/webapps
EXPOSE 8080
CMD mvn jetty:run
