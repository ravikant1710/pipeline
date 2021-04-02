#!/bin/bash

#Copy the new jar to the build location
cp -f java-app/target/jb-hello-world-maven-0.1.0.jar jenkins/build/

echo "******************************"
echo "******Building Docker Image***"
echo "******************************"
cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
