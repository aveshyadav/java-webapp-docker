# java-webapp-docker
Sample java web app with Docker

# Steps to run

1. Git clone https://github.com/aveshyadav/java-webapp-docker.git
2. Import in Eclipse as Existing Maven Project
3. Right Click on project and click Run As Maven install
4. Open Terminal/CMD/Powershell, go to Project location and find the Dockerfile

5. Run command - docker build -t java-web-app . (To build Docker image)

Output should be like below :
Sending build context to Docker daemon  899.6kB
Step 1/4 : FROM tomcat:8.0
 ---> ef6a7c98d192
Step 2/4 : MAINTAINER "Avesh Yadav"
 ---> Running in b66fee0a0c5b
Removing intermediate container b66fee0a0c5b
 ---> 80609b85d021
Step 3/4 : COPY /target/sample-java-web-app.war /usr/local/tomcat/webapps/sample-java-web-app.war
 ---> e41c712f34d5
Step 4/4 : EXPOSE 8080
 ---> Running in a6bd422edaca
Removing intermediate container a6bd422edaca
 ---> adbc02c5dd7f
Successfully built adbc02c5dd7f
Successfully tagged java-web-app:latest

6. Run command - docker images
Verify that, there should be an entry of java-web-app image

7. Run command - docker run -it -p9090:8080 java-web-app (To Create container out of Docker image)
8. Click - http://localhost:9090/sample-java-web-app/index.jsp

