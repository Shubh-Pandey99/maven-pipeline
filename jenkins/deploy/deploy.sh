#!/bin/bash

echo "maven-project" > /tmp/.auth
echo "$BUILD_TAG" >> /tmp/.auth
echo "$PASS" >> /tmp/.auth
scp -i /opt/ssh-key ./jenkins/deploy/publish.sh ec2-user@34.248.165.97:/home/ec2-user/jenkins/maven-project
scp -i /opt/ssh-key /tmp/.auth ec2-user@34.248.165.97:/tmp/.auth
ssh -i /opt/ssh-key  ec2-user@34.248.165.97 "/home/ec2-user/jenkins/maven-project/publish.sh"
