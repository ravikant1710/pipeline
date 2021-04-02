#!/bin/bash

echo "******************************"
echo "*****Building Jar*************"
echo "******************************"
WORKSPACE=/opt/jenkins_home/jenkins_home/workspace/pipeline
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
