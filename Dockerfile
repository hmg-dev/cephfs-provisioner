FROM ubuntu:18.04

ENV CEPH_VERSION "octopus"
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install -y tzdata wget gnupg2 lsb-release && \
	apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN wget -q -O- 'https://download.ceph.com/keys/release.asc' | apt-key add -
RUN echo "deb https://download.ceph.com/debian-${CEPH_VERSION}/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/ceph.list

RUN apt-get update && \
	apt-get install -y ceph-common python3-cephfs && \
	apt-get clean -y && rm -rf /var/lib/apt/lists/*
RUN ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

COPY cephfs-provisioner /usr/local/bin/cephfs-provisioner
COPY cephfs_provisioner/cephfs_provisioner.py /usr/local/bin/cephfs_provisioner
RUN chmod -v o+x /usr/local/bin/cephfs_provisioner
