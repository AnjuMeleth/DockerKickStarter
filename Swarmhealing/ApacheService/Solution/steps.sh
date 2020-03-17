docker service create --name apache2 --replicas=3 -p 8080:80 httpd
docker service ls
docker service ps apache2


# worker node
docker swarm leave
