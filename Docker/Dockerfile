FROM ubuntu:20.04
MAINTAINER bhaas@broadinstitute.org

ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get -qq update && apt-get -qq -y install \
    automake \
    build-essential \
    bzip2 \
    cmake \
    curl \
    default-jre \
    fort77 \
    ftp \
    g++ \
    gcc \
    gfortran \
    git \
    libblas-dev \
    libbz2-dev \
    libcairo2-dev \
    libcurl4-openssl-dev \
    libdb-dev \
    libghc-zlib-dev \
    libjpeg-dev \
    liblzma-dev \
    libncurses-dev \
    libncurses5-dev \
    libpcre3-dev \
    libpng-dev \
    libreadline-dev \
    libreadline-dev \
    libssl-dev \
    libtbb-dev \
    libx11-dev \
    libxml2-dev \
    libxt-dev \
    libzmq3-dev \
    make \
    nano \
    perl \
    pkg-config \
    python3 \
    python3-dev \
    python3-distutils \
    python3-pip \
    python3-setuptools \
    rsync \
    texlive-latex-base \
    tzdata \
   unzip \
    wget \
    x11-common \
    zlib1g-dev

## Perl stuff
RUN curl -L https://cpanmin.us | perl - App::cpanminus
RUN cpanm install DB_File
RUN cpanm install URI::Escape


## set up tool config and deployment area:

ENV SRC /usr/local/src
ENV BIN /usr/local/bin


## EVM

WORKDIR $SRC

ENV EVM_VERSION=2.1.0
ENV EVM_CO=e04a7f538b6992e997ebf7d2e4b08dfdc150df2f

RUN git clone https://github.com/HeleneRimbert/EVidenceModeler.git && \
    cd EVidenceModeler && \
    git checkout ${EVM_CO} && \
    git submodule init && git submodule update && \
    make && \
    mv * $BIN/

COPY Dockerfile $SRC/Dockerfile.$EVM_VERSION

