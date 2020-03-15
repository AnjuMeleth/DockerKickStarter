#!bin/sh
docker volume create MyVol
docker inspect MyVol
# MyVol was mounted on path /var/lib/docker/volumes/MyVol/_data in my system
docker run --name MyJenkins -p 5000:5000 -p 8080:8080 jenkins
docker ps
docker exec -it MyJenkins /bin/bash
docker ps
docker cp MyJenkins:/var/jenkins_home ./data
docker stop MyJenkins
docker rm MyJenkins

# create a new containedocker run --name MyJenkins -p 5000:5000 -p 8080:8080 jenkins
# change directory permission
chown -R 1000 data
docker run -p 50000:50000 -p 8080:8080 -v ~/data/jenkins_home:/var/jenkins_home --name DataJenkins jenkins/jenkins
# / or ~/ bind mounts
