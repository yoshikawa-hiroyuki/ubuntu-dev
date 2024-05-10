FROM ubuntu
MAINTAINER "Yoshikawa, Hiroyuki @Fujitsu Ltd." <yoh@fujitsu.com>

ENV DEBIAN_FRONTEND=noninteractive

ARG http_proxy=""
ARG https_proxy=""

RUN apt-get update && apt-get install -y \
	vim less git \
	gcc gfortran gdb \
	openmpi-bin libopenmpi-dev \
	netcdf-bin libnetcdf-dev libnetcdff-dev \
	python3 python3-pip \
 && apt-get install -y libfftw3-dev libfftw3-mpi-dev \
 && apt-get install -y python3-numpy python3-matplotlib \
 && apt-get clean

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN useradd -ms /bin/bash user

USER user
WORKDIR /home/user

