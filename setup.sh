#init docker swarm
docker swarm init --advertise-addr eth0

# creating docker swarm network

docker network create -d overlay my-network
