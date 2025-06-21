FROM jenkins/jenkins:latest
LABEL maintainer="KienNgo"

USER root

RUN apt-get update && \
    apt-get install -y python3-pip wget gnupg software-properties-common lsb-release && \
    pip3 install --break-system-packages awscli && \
    wget -O - https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list && \
    apt-get update && \
    apt-get install -y terraform && \
    apt-get clean

USER jenkins
