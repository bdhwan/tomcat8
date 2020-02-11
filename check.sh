#!/bin/bash
echo "ok"
echo "GIT_URL: "$GIT_URL

rm -rf /usr/local/tomcat/webapps/*

if [ -z "$GIT_URL" ]
then
    echo "not defined DST_FOLDER"
else 
    git clone "$GIT_URL"
    cd "$(basename "$GIT_URL" .git)"
	mv * /usr/local/tomcat/webapps/
fi


$CATALINA_HOME/bin/catalina.sh run
