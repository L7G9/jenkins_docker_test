# jenkins agent with JDK 17

FROM jenkins/inbound-agent

USER root

RUN apt-get purge openjdk
RUN apt update && apt upgrade -y
RUN apt install wget -y
RUN apt install libc6-i386 libc6-x32 libasound2 libxi6 libxrender1 libxtst6 curl -y
RUN wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb
RUN dpkg -i jdk-17_linux-x64_bin.deb
ENV JAVA_HOME /usr/lib/jvm/jdk-17
