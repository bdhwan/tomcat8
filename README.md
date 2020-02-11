#tomcat 
version: '3'
services:
  tomcat:
    container_name: tomcat
    image: bdhwan/tomcat:8.6
    ports:
      - "80:8080" 
    environment:
    - "JAVA_OPTS=-Dspring.profiles.active=local"
    - GIT_URL=https://bitbucket.org/.git