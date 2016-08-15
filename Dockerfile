FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN apk update 
    && wget -c -P /tmp -O leonte.tar.gz http://sourceforge.net/projects/leanote-bin/files/2.0/leanote-linux-amd64-v2.0.bin.tar.gz/download
