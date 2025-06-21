FROM jenkins/jenkins:latest
LABEL maintainer="KienNgo"

USER root

RUN apt-get update && \
    apt-get install -y python3-pip && \
    pip3 install --break-system-packages awscli && \
    apt-get clean

USER jenkins
