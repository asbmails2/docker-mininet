FROM ubuntu:18.04

USER root
WORKDIR /root

COPY ENTRYPOINT.sh /

RUN apt-get update && apt-get install -y --no-install-recommends \
	apt-utils \
	curl \
	iproute2 \
	iputils-ping \
	mininet \
	openvswitch-switch \
	openvswitch-testcontroller \
	nano \
	net-tools \
	tcpdump \
	vim \
	x11-xserver-utils \
	xterm \
	ansible \
	git \
	aptitude \
	sudo \
 && rm -rf /var/lib/apt/lists/* \
 && chmod +x /ENTRYPOINT.sh

EXPOSE 6633 6653 6640 8080 8888

ENTRYPOINT ["/ENTRYPOINT.sh"]

