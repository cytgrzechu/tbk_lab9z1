docker container rm -f $(docker container ls -aq)

docker service rm numbers-api
docker service rm numbers-web

docker network rm numbers-net

docker swarm leave --force