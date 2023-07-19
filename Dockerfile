FROM jetty:9.4.51-jre8-eclipse-temurin


USER jetty
COPY target/*.war /var/lib/jetty/webapps
EXPOSE 8080
CMD ["java","-jar","/usr/local/jetty/start.jar"]
