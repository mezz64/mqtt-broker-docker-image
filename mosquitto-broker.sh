#!/bin/bash

echo 'SERVICE: mosquitto broker'
exec mosquitto -c /etc/mosquitto/mosquitto.conf
