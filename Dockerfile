# we are extending everything from tomcat:8.0 image ...
FROM tomcat:8.0

MAINTAINER "Avesh Yadav"

# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat

COPY /target/sample-java-web-app.war /usr/local/tomcat/webapps/sample-java-web-app.war
EXPOSE 8080