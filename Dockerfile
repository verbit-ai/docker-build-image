FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
ENV TERRAFORM_VERSION=0.13.7
RUN apt-get -qy update && \
    apt-get install -qy ca-certificates wget unzip git awscli curl docker.io ruby ruby-bundler python3-pip && \
    apt-get clean -qq

RUN cd / && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip *.zip && \
    rm *.zip && \
    mv terraform /usr/local/bin
