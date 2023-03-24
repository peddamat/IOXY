#!/bin/sh

ENDPOINT="a3v7nl5b2malks-ats.iot.us-west-2.amazonaws.com"
THINGNAME="feathermitm"

./ioxy mqtts \
	-mqtts-port 8883 \
	-mqtts-cert certs/verificationCert/verificationCert.pem \
	-mqtts-key certs/verificationCert/verificationCert.key \
	broker \
	-mqtt-broker-tls \
	-mqtt-broker-host ${ENDPOINT} \
	-mqtt-broker-port 8883 \
	-mqtt-broker-cert certs/connect_device_package/${THINGNAME}.cert.pem \
	-mqtt-broker-key certs/connect_device_package/${THINGNAME}.private.key