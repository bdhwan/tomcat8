FROM tomcat:8
MAINTAINER bdhwan@gmail.com



RUN  apt-get update -y
RUN  apt-get install -y vim 


ENV TZ=Asia/Seoul 
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY mysql-connector-java-5.1.48-bin.jar /usr/local/tomcat/lib/


ADD check.sh /home/check.sh
RUN chmod 777 /home/check.sh
WORKDIR /home
ENTRYPOINT ["/bin/sh", "check.sh"]

