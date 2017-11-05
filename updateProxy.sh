PROXY=$1
Mount=`docker volume inspect nginx_nginx_resources --format ''{{.Mountpoint}}''`
TOOLS_FILE=$Mount/configuration/sites-enabled/tools-context.conf
if grep -e "###START-PROXY:$PROXY###" -e "###END-PROXY:PROXY:$PROXY###" $TOOLS_FILE; then
	echo "Proxy Already exists"
else
	echo "Adding $PROXY"
	awk -v PROXY=$PROXY '$0 == "###END PROXY ENTRIES###" && c == 0 {c = 1; system("cat "PROXY"/"PROXY".proxy") }; {print} ' $TOOLS_FILE > tmp
	mv tmp $TOOLS_FILE
fi
cat $TOOLS_FILE
cp $PROXY/*.json $Mount/release_note/bp
cp $PROXY/*.png $Mount/release_note/img
