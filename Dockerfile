FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN sed -i 's#http://archive.ubuntu.com/ubuntu/#mirror://mirrors.ubuntu.com/mirrors.txt#g' /etc/apt/sources.list
RUN apt-get -qy update; apt-get install -qy wget unzip git awscli curl docker.io
RUN cd / && wget https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip && unzip *.zip && mv terraform /usr/local/bin
