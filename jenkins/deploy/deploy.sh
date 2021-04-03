#!/bin/bash
WORKSPACE=/opt/jenkins_home/jenkins_home/workspace/pipeline
echo maven-project > $WORKSPACE/centos7/auth
echo $BUILD_TAG >> $WORKSPACE/centos7/auth
echo $PASS >> $WORKSPACE/centos7/auth


cd jenkins/deploy/ && docker-compose up -d

