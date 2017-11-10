# use the latest CentOS image
FROM centos:latest

# set maintainer
LABEL maintainer "kclaxton@cogitocorp.com"

# Install some additional packages
RUN echo "[platform-prod-cogito]
name=platform-prod-cogito for RHEL/ CentOS $releasever - $basearch
baseurl=http://yum.cogitohealth.net/platform-prod-cogito/
enabled=1" > /etc/yum.repos.d/platform-prod-cogito

RUN yum -y install yum-utils admintools authserv computeserver

