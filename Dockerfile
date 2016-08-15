FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN apk update && wget -c -P /tmp -O leonote.tar.gz "https://sourceforge.net/projects/leanote-bin/files/2.0/leanote-linux-amd64-v2.0.bin.tar.gz/download" && mkdir -p /opt && cd /opt && tar -xzf /tmp/leonote.tar.gz
