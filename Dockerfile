# use the latest CentOS image
FROM centos:latest

# set maintainer
LABEL maintainer "kclaxton@cogitocorp.com"

# Install some additional packages
RUN echo "[platform-prod-cogito]\nname=platform-prod-cogito for RHEL/ CentOS $releasever - $basearch\nbaseurl=http://yum.cogitohealth.net/platform-prod-cogito/\nenabled=1\n" > /etc/yum.repos.d/platform-prod-cogito

RUN yum -y install yum-utils admintools authserv computeserver

