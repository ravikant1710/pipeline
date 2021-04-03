#!/bin/bash

echo maven-project > /tmp/auth
echo $BUILD_TAG >> /tmp/auth
echo $PASS >> /tmp/auth


cd jenkins/deploy/ && docker-compose up -d

