FROM tomcat:8.0-alpine
EXPOSE 8080
COPY target/*.war /usr/local/tomcat/webapps/

ENTRYPOINT ["sh", "/usr/local/tomcat/bin/startup.sh"]
