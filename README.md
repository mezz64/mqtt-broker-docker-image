MQTT broker docker image
========================

MQTT broker docker image. Based on phusion/baseimage and mosquitto

Build is simple:

``docker build -t mqtt-broker .``

Run image using:

``docker run -d -p 1883:1883 --name=mqtt-broker mqtt-broker``

Or use "official" image from dockerhub:

``docker run -d -p 1883:1883 --name=mqtt-broker  villlem/mqtt-broker:latest``
