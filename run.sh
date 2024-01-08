#/bin/bash

if [[ "$1" == "" ]]
then
	echo "give your iso a name"
	exit 1;
fi

docker build -t build-iso .

docker run -e NAME=$1.iso\
	-v $PWD/res:/result/\
	build-iso
