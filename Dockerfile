FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN sed -i 's#http://archive.ubuntu.com/ubuntu/#mirror://mirrors.ubuntu.com/mirrors.txt#g' /etc/apt/sources.list
RUN apt-get -qy update && apt-get install -qy wget unzip git awscli curl docker.io
RUN cd / && wget https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip && unzip *.zip && mv terraform /usr/local/bin
