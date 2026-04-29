FROM tomcat:9.0

LABEL maintainer="Savyasaachi"
LABEL project="java-maven-devops-pipeline"
LABEL version="1.0"
LABEL description="Java Maven WAR application deployed on Tomcat using Docker"

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/java-webapp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh","run"]
