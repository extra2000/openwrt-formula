FROM debian:buster
MAINTAINER extra2000 <https://github.com/extra2000>

USER root

RUN apt update && apt install -y \
    build-essential \
    curl \
    file \
    gawk \
    gcc-multilib \
    gettext \
    git \
    libncurses5-dev \
    libssl-dev \
    python2.7 \
    python3 \
    rsync \
    subversion \
    swig \
    unzip \
    wget \
    zlib1g-dev

RUN apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
