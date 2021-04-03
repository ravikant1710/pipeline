#!/bin/bash
#WORKSPACE=/opt/jenkins_home/jenkins_home/workspace/pipeline
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -r /tmp/.auth root@10.128.0.3:/tmp/

scp -r ./jenkins/deploy/docker-compose.yml root@10.128.0.3:/app/maven/
scp -r ./jenkins/deploy/publish root@10.128.0.3:/app/maven/

ssh root@10.128.0.3 "/app/maven/publish"
