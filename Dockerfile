# use the latest CentOS image
FROM centos:latest

# set maintainer
LABEL maintainer "kclaxton@cogitocorp.com"

# Install some additional repos
RUN echo -e "[platform-prod-cogito]\nname=platform-prod-cogito for RHEL/ CentOS\nbaseurl=http://yum.cogitohealth.net/platform-prod-cogito/\nenabled=1\ngpgcheck=0" > /etc/yum.repos.d/platform-prod-cogito.repo
RUN echo -e "[thirdparty]\nname=thirdparty for RHEL/ CentOS\nbaseurl=http://yum.cogitohealth.net/thirdparty/\nenabled=1\ngpgcheck=0" > /etc/yum.repos.d/thirdparty.repo

RUN yum -y install glibc
RUN yum -y install telephone-audio-server mysql orkaudio

