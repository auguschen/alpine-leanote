FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN apk update && rm -rf /tmp/leanote.tar.gz && rm -rf /opt/leanote && mkdir -p /tmp && cd /tmp && wget -c -O leanote.tar.gz "http://downloads.sourceforge.net/project/leanote-bin/2.0/leanote-linux-amd64-v2.0.bin.tar.gz?r=http%3A%2F%2Fleanote.org%2F&ts=1471250944&use_mirror=ncu" && mkdir -p /opt && cd /opt && tar -xzf /tmp/leanote.tar.gz && rm -rf /tmp/leanote.tar.gz && cd leanote/conf && sed -i "s/db.host=127.0.0.1/db.host=mongodb/g" app.conf && sed -i "s/app.secret=V85ZzBeTnzpsHyjQX4zukbQ8qqtju9y2aDM55VWxAH9Qop19poekx3xkcDVvrD0y/app.secret=Die@n0therd@y/g" app.conf

EXPOSE 9000

CMD sh /opt/leanote/bin/run.sh
