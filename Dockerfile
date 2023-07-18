FROM jetty:9-jre8-openjdk
COPY --from=build target/*.war /var/lib/jetty/webapps
EXPOSE 8080
CMD mvn jetty:run
