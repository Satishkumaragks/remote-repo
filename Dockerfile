FROM ubuntu
RUN apt update -y
RUN apt install -y openjdk
RUN apt install wget -y
RUN wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN apt update -y
RUN apt install jenkins -y


