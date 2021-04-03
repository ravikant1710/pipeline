#!/bin/bash

echo maven-project > /opt/pipeline/jenkins/deploy/remote-host/.auth
echo $BUILD_TAG >> /opt/pipeline/jenkins/deploy/remote-host/.auth
echo $PASS >> /opt/pipeline/jenkins/deploy/remote-host/.auth


cd jenkins/deploy/ && docker-compose up -d

