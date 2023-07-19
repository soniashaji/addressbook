FROM jetty:9.4.51-jre8-eclipse-temurin
USER 0
RUN wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN tar -xvf apache-maven-3.6.3-bin.tar.gz
RUN mv apache-maven-3.6.3 /opt/
ENV M2_HOME /opt/apache-maven-3.6.3
ENV PATH "$M2_HOME/bin:$PATH"
RUN export PATH
RUN apt-get update


COPY target/*.war /var/lib/jetty/webapps
EXPOSE 8080
CMD ["java","-jar","/usr/local/jetty/start.jar"]
