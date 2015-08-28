#!/bin/bash

echo 'SERVICE: mosquitto broker'
exec mosquitto -c /mosquitto/config/mosquitto.conf
