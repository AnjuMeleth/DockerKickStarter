docker service create --name apache2 --mode global -d -p 8003:80 httpd
# global one in each docker host in swarm cluster
# list the services 
docker service ls
# list the tasks
docker service ps apache2
