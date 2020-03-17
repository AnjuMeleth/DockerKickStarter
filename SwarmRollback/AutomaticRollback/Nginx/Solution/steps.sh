docker service create --name nginx-service --replicas 2 --update-failure-action rollback nginx:latest
docker service update --image=nginx:final nginx-service
