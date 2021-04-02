echo "************************************"
echo "******Pushing Image*****************"
echo "************************************"

IMAGE="maven-project"
echo "***Logging IN***********************"
docker login -u ravikant1710 -p $PASS
echo "**********Tagging image ************"
docker tag $IMAGE:$BUILD_TAG ravikant1710/$IMAGE:$BUILD_TAG
echo "*********Pushing Image**************"
docker push ravikant1710/$IMAGE:$BUILD_TAG
