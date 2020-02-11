#!/bin/bash
docker build --no-cache --tag bdhwan/tomcat:8.6 .
docker push bdhwan/tomcat:8.6