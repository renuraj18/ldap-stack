
stack=$1

##Checking stack

docker stack ls | grep  -w ${stack}
if [ true ]; then
	echo "stack ${Stack} already running"
fi

##Deploy stack

#docker stack deploy -c docker-compose-${stack}-.yml $stack

## Update Proxy

#sh updateProxy.sh ${stack}

# Test proxy

docker stack ps ${stack}

