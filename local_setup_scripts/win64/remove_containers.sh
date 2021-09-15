#!/bin/bash -e
echo "full redploy with OS version: $1"

docker stack rm osserver || true
docker service rm $(docker service ls -q) || true
docker swarm leave -f || true
echo "docker rm ps"
docker rm -f $(docker ps -aq) || true
echo "docker volume rm"
docker volume rm $(docker volume ls -q) || true
echo "docker image rm"
docker image rm -f $(docker image ls -aq) || true
