#!/bin/sh
docker volume create my-vol
docker run --name MyJenkinsServer -p 5000:5000 -p 8080:8080 -v my-vol:/var/jenkins_home jenkins

# Create admin user and create a pipeline job
# Then delete the container MyJenkinsServer
# Newly create Jenkins container on top of the same volume mount

docker run --name MyJenkins -p 5000:5000 -p 8080:8080 -v my-vol:/var/jenkins_home jenkins

# The admin user and the job details would be retained.
# Now you may delete the volume
docker volume rm my-vol
