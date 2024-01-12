FROM debian:latest

MAINTAINER 01gr0nd5

RUN apt-get update &&\
	apt-get install -y\
	genisoimage\
	isolinux\
	pwgen\
	vim\
	cpio\
	xorriso\
	genisoimage\
	gzip

COPY cook-book/ /tmp/cook-book/
COPY debian-12.4.0-amd64-netinst.iso /tmp/debian-12.4.0-amd64-netinst.iso

ENTRYPOINT ["bash", "/tmp/cook-book/preseed.sh"]

CMD ["/bin/bash"]
