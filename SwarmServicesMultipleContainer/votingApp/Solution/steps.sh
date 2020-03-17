vi docker-stack.yml #create the yml
docker stack deploy --compose-file docker-stack.yml vote
docker service ls
docker stack ps vote
# Goto the node where the voting app is running in port 5000 the result in port 50001

docker service rm vote_db vote_redis vote_vote vote_worker vote_result
