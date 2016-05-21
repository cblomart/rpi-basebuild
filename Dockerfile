FROM resin/rpi-raspbian:jessie
MAINTAINER cblomart@gmail.com

RUN apt-get update &&  apt-get install -y \
	build-essential \ 
	python-dev \
        python-pip \
        wget \
        curl \
        docker.io \
        rsync \
        musl \
        musl-tools \
        xutils-dev \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install dockerize \
    && rm -rf /tmp/* /var/tmp/*
RUN curl https://storage.googleapis.com/golang/go1.6.2.linux-armv6l.tar.gz | tar -C /usr/local -zxf 
RUN mkdir /root/go
RUN echo "export GOPATH=/root/go" >> /etc/profile
RUM echo 'export PATH=$PATH:$GOPATH/bin' >> /etc/profile

VOLUME  /var/run/docker.sock
