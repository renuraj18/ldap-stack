# ldap-stack

This Stack will bring up LDAP and LDAP PHP admin docker containers
Can be used effectively with swarm and non swarm mode

## To spin up In swarm mode use below commands
```
docker swarm deploy -c docker-compose.yml ldap
```

## To spin Up In stand alone mode use below commands

```
docker-compose up
