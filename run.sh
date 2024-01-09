#/bin/bash

NAME_OF_ISO=debian-12.4.0-amd64-netinst.iso
OUTPUT_ISO_NAME=debian-12.4.0-amd64-preseeded.iso

if [[ "$1" == "clean" ]]
then
	rm -rf ./res
	echo "deleted the res"
	exit 0;
fi

docker build -t build-iso . &&\
	docker run -e NAME_OF_ISO=$NAME_OF_ISO\
	-e OUTPUT_ISO_NAME=$OUTPUT_ISO_NAME\
	-v $PWD/res:/result/\
	build-iso
