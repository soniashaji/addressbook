FROM tomcat:8.0-alpine
RUN mkdir -p /home/java_app

COPY . /home/java_app
WORKDIR /home/java_app

EXPOSE 8080
ADD target/*.war /usr/local/tomcat/webapps/

CMD [ "catalina.sh", "run" ]
