#!/bin/bash

echo "******************************************"
echo "**********Cleaning Up worksapce******************"
echo "******************************************"

WORKSPACE=/home/ec2-user/maven_jenkins/jenkins_home/workspace/pipeline-maven-project
sudo rm -rf $WORKSPACE
