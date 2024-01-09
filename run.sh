#/bin/bash
set -ex

NAME_OF_ISO=debian-12.4.0-amd64-netinst.iso
OUTPUT_ISO_NAME=debian-12.4.0-amd64-preseeded.iso

if [[ "$1" == "clean" ]]
then
	rm -rf ./$OUTPUT_ISO_NAME
	exit 0;
fi

docker build -t build-iso . &&\
	docker run -e NAME_OF_ISO=$NAME_OF_ISO\
	-e OUTPUT_ISO_NAME=$OUTPUT_ISO_NAME\
	-v $PWD/$OUTPUT_ISO_NAME:/result/$OUTPUT_ISO_NAME\
	build-iso
