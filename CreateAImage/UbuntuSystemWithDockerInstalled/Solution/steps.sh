
# Run a container using Ubuntu base image
docker run -it --name MyUbuntu ubuntu:latest
# Run apt-get update inside the container
# Run apt-get install docker.io
# Exit the container by Ctrl + p +q
docker ps
docker commit MyUbuntu anjurose/dockerubuntu
docker run -it --name MyDocker anjurose/dockerubuntu
# Run the command docker --version
# new container with the anjurose/dockerubuntu container have the docker installed
docker image ls

