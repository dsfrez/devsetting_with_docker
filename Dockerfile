FROM ubuntu:latest
MAINTAINER Jinyong.Yoon <dsfrez@gmail.com>

# User info
#ENV UID="11006" \
#    UNAME="i351006" \
#    GID="100" \
#    GNAME="users" \
#    SHELL="/bin/bash" \
#    HOME=/home/i351006

# Version info
ENV CLATE_VERSION=0.2 \
    GLOBAL_VERSION=6.6.3 \
    LLVM_VERSION=9.0.0

#WORKDIR $HOME

# Install dependencies
RUN apt-get update

RUN apt-get install -y \
    locales \
    build-essential \
    git \
    curl \
    wget \
    vim

RUN locale-gen ko_KR.UTF-8
ENV LC_ALL ko_KR.UTF-8

RUN mkdir -p $HOME/github \
    git clone https://github.com/dsfrez/devsetting $HOME/github/devsetting

# Install dependencies
#RUN apt-get install -y \
#    cmake \
#    ncurses-dev \
#    zlib1g-dev \
#    ninja-build \
#    curl \
#    xz-utils \
#    python3-dev
