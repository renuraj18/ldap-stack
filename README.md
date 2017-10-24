This is the swarm node based setup
# Setup swarm cluster

```
docker swarm init --advertise-addr eth0
```
## Join Swarm as a worker

```
docker swarm join  --token ###TOKEN### IP:2377
```
## Join swam as a manager

```
docker swarm join-token 
```

## Create an overlay network

```
docker network create -d overlay my-network
```

# To deploy respective stack follow below

```
docker stack deploy -c "compose-file" "stack name"
```

#ldap-stack

This Stack will bring up LDAP and LDAP PHP admin docker containers
Can be used effectively with swarm and non swarm mode

## To spin up In swarm mode use below commands
```
docker swarm deploy -c docker-compose-ldap.yml ldap
```

## To spin Up In stand alone mode use below commands

```
docker-compose -f docker-compose-ldap.yml up
```

# swarm visualizer
This stack will bring up the Swarm vizualiser which can be useful to vizualize th stack

```
docker stack deploy -c docker-compose-swarm-visualizer.yml swarm-visualizer
```



