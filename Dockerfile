FROM phusion/baseimage:0.9.14

MAINTAINER Vojta Orgoň

RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

RUN add-apt-repository ppa:mosquitto-dev/mosquitto-ppa -y
RUN apt-get update
RUN apt-get install -y mosquitto python-mosquitto

ADD mosquitto-broker.sh /etc/service/mosquitto-broker/run

EXPOSE 1883
