FROM resin/rpi-raspbian:jessie
MAINTAINER cblomart@gmail.com

RUN apt-get update &&  apt-get install -y \
	build-essential \ 
	python-dev \
        python-pip \
        wget \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install dockerize \
    && rm -rf /tmp/* /var/tmp/*

