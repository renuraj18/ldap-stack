PROXY=$1
Mount=`docker volume inspect nginx_nginx_resources --format ''{{.Mountpoint}}''`
TOOLS_FILE=$Mount/configuration/sites-enabled/tools-context.conf
PROXYU=`echo $PROXY | tr '[:lower:]' '[:upper:]'`
if grep -e "###PROXY:$PROXYU###" -e "###PROXY:$PROXYU###" $TOOLS_FILE; then
	echo "Proxy $PROXY found, Removing"
	sed -i "/###PROXY:$PROXYU###/,/###PROXY:$PROXYU###/d" $TOOLS_FILE
	cat $TOOLS_FILE
else
	echo "Proxy $PROXY not found"
fi
