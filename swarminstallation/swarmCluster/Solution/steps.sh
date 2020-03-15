# Manager node
docker swarm init --advertise-addr <ipaddress>
docker node ls
docker swarm join-token manager
docker swarm join-token worker
# worker node
sh install.sh
docker swarm join --token <>
