# Run a ubuntu container
docker run -it --name MyUbuntu ubuntu:latest
# Run apt-get update
# Run apt-get install docker.io
docker ps
# No matter if the container is running or stopped. This is ideal if we forgot to use docker commit
docker export MyUbuntu > newsystem.tar
ls
# Any team member can get the image and name anything from the tar file
docker import - anjurose/myubuntu < newsystem.tar
docker image ls

