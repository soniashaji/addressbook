FROM tomcat:8.0-alpine

COPY target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
ENTRYPOINT ["sh", "/usr/local/tomcat/bin/startup.sh"]
