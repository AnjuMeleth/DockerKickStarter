# Create a local image repository
docker run -d -p 5000:5000 registry:2
# Check the status
curl -i http://localhost:5000/v2/
# Tag the image in the local repository name
docker tag anjurose/webapp localhost:5000/webapp
docker push localhost:5000/webapp
docker image ls
docker rmi anjurose/webapp
docker rmi localhost:5000/webapp
docker image ls
docker pull localhost:5000/webapp
docker image ls


