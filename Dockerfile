FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  git \
  flex \
  bison \
  xorg \
  xorg-dev \
  libx11-dev \
  gcc

RUN git clone https://github.com/wine-mirror/wine.git

WORKDIR /root/wine

RUN git checkout wine-2.22

RUN ./configure --enable-win64

RUN make
