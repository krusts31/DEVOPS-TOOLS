FROM debian:latest

MAINTAINER 01gr0nd5

RUN apt-get update &&\
	apt-get install -y\
	genisoimage\
	vim\
	cpio\
	xorriso\
	genisoimage\
	gzip


COPY preseed.cfg /tmp/preseed.cfg
COPY add_preseed.sh add_preseed.sh

#put your debian instalation here
COPY debian-12.4.0-amd64-netinst.iso /tmp/debian-12.4.0-amd64-netinst.iso

ENTRYPOINT ["bash", "add_preseed.sh"]

CMD ["/bin/bash"]
