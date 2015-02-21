MQTT broker docker image
========================

MQTT broker docker image. Based on phusion/baseimage and mosquitto

Run image using:

``docker run -d -p 1883:1883 --name=mqtt-broker  villlem/mqtt-server:latest``

Or use only clients:

``docker run -ti --rm villlem/mqtt-server:latest mosquitto_sub -h some.mqtt.server -t '#'``
