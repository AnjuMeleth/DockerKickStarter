# Select the docker image need to be shared
docker image ls
docker login
docker push anjurose/webapp
docker run --name MyApp -p 5000:5000 anjurose/webapp

