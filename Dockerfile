FROM jetty:9-jre8-openjdk
RUN sudo apt install maven -y
COPY target/*.war /var/lib/jetty/webapps
EXPOSE 8080
CMD mvn jetty:run
