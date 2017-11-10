# use the latest CentOS image
FROM centos:latest

# set maintainer
LABEL maintainer "kclaxton@cogitocorp.com"

# Install some additional packages
RUN yum -y install yum-utils
