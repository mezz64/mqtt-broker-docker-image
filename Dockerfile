FROM phusion/baseimage:0.9.16

MAINTAINER Vojta Orgoň (villlem@gmail.com)

RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

# Fix a Debianism of the nobody's uid being 65534
RUN usermod -u 99 nobody
RUN usermod -g 100 nobody

RUN add-apt-repository ppa:mosquitto-dev/mosquitto-ppa -y
RUN apt-get update
RUN apt-get install -y mosquitto mosquitto-clients

VOLUME /etc/mosquitto

ADD mosquitto-broker.sh /etc/service/mosquitto-broker/run

EXPOSE 1883
