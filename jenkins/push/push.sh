#/bin/bash

echo "********Loggning In*******************"
docker login -u shubhpandey9 -p $PASS

echo "****************************************"
echo "*******Taggig Image************"
echo "****************************************"

docker tag maven-project:$BUILD_TAG shubhpandey9/maven-project:$BUILD_TAG

echo "****************************************"
echo "*******Pushing Image************"
echo "****************************************"


docker push shubhpandey9/maven-project:$BUILD_TAG
