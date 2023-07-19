FROM jetty:9-jre8-openjdk
USER 0
RUN wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN tar -xvf apache-maven-3.6.3-bin.tar.gz
RUN mv apache-maven-3.6.3 /opt/
ENV M2_HOME /opt/apache-maven-3.6.3
ENV PATH "$M2_HOME/bin:$PATH"
RUN export PATH
RUN apt-get update
CMD ["mvn", "--version"]
