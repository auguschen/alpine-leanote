FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN apk update

RUN wget -c -P /tmp -O leonote-linux-amd64-v2.0.bin.tar.gz "http://downloads.sourceforge.net/project/leanote-bin/2.0/leanote-linux-amd64-v2.0.bin.tar.gz?r=http%3A%2F%2Fleanote.org%2F&ts=1471247478&use_mirror=nchc"

RUN mkdir /opt && cd /opt && tar -xzf /tmp/leonote-linux-amd64-v2.0.bin.tar.gz
