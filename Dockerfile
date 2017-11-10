# use the latest CentOS image
FROM centos:latest

# set maintainer
LABEL maintainer "kclaxton@cogitocorp.com"

# Install some additional repos
RUN echo -e "[platform-prod-cogito]\nname=platform-prod-cogito for RHEL/ CentOS\nbaseurl=http://yum.cogitohealth.net/platform-prod-cogito/\nenabled=1\ngpgcheck=0" > /etc/yum.repos.d/platform-prod-cogito.repo
RUN echo -e "[thirdparty]\nname=thirdparty for RHEL/ CentOS\nbaseurl=http://yum.cogitohealth.net/thirdparty/\nenabled=1\ngpgcheck=0" > /etc/yum.repos.d/thirdparty.repo

RUN yum -y install initscripts
RUN yum -y install mysql
RUN yum -y install telephone-audio-server
# THis is a stupid hack.  I don't know why the deps don't resolve for orkaudio, this should be investigated.
RUN yum -y install glibc-0:2.17-196.el7.i686 libgcc-0:4.8.5-16.el7.x86_64 glibc-0:2.17-196.el7.x86_64 libgcc-0:4.8.5-16.el7.i686
RUN yum -y install orkaudio

