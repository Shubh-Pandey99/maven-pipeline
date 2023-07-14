#!/bin/bash

echo "******************************************"
echo "************Testing the Code******************"
echo "******************************************"

WORKSPACE=/home/ec2-user/maven_jenkins/jenkins_home/workspace/pipeline-maven-project
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven "$@"
