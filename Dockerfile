FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y git

RUN mkdir -p /root/A
RUN mkdir -p /root/B
RUN mkdir -p /root/C
RUN mkdir -p /root/files

RUN touch /root/files/a.txt
RUN touch /root/files/b.txt
RUN touch /root/files/c.txt

WORKDIR /root
RUN git clone https://github.com/kkh731/assignment_week8.git