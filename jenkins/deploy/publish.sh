#/bin/bash

export IMAGE=$(sed -n '1p' /tmp/.auth)
export TAG=$(sed -n '2p' /tmp/.auth)
export PASS=$(sed -n '3p' /tmp/.auth)

echo "*********Logging In********************"

docker login -u shubhpandey9 -p $PASS

echo "*********Pulling Image********************"
cd /home/ec2-user/jenkins/maven-project && docker-compose up -d




