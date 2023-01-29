docker swarm init

docker network create --driver overlay numbers-net

docker service create `
--detach `
--replicas 3 `
--network numbers-net `
--name numbers-api `
diamol/ch08-numbers-api:v3

docker service create `
--detach `
--replicas 3 `
--network numbers-net `
--name numbers-web `
diamol/ch08-numbers-web:v3
