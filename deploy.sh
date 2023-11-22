IMAGE="docker-nginx"
echo "Deploy script for google build .. $IMAGE"

# docker build -t videointelligence-web .
# docker run --name $IMAGE  -e PORT=7777 -p 7777:7777  $IMAGE


#xxxxx

# echo "stop all containers  .."
# docker kill $(docker ps -q)

echo "remove image  .."
docker rmi -f $IMAGE

echo "rebuild image  .."
docker-compose  up --build -d

# echo "Tag image to gcp .."
# docker tag $IMAGE  asia.gcr.io/scammersuppression/$IMAGE

# echo "push image to gcp .."
# docker push asia.gcr.io/scammersuppression/$IMAGE
