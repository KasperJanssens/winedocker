FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
  git \
  flex \
  bison \
  xorg \
  xorg-dev \
  libx11-dev \
  gcc

