FROM centos:7
MAINTAINER Jon Malachowski "jmalacho@gmail.com"

RUN yum install -y git epel-release && \
    yum install -y ansible libselinux-python && \
    yum clean all

