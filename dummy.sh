#!/bin/bash
if [[ $TF_RESERVATION_AUTHORIZED_KEYS_BASE64 ]]; then
	mkdir -p /root/.ssh
	chmod 700 /root/.ssh
	base64 -d <<<"$TF_RESERVATION_AUTHORIZED_KEYS_BASE64" >> /root/.ssh/authorized_keys
	chmod 600 /root/.ssh/authorized_keys
	chown root:root -R /root/.ssh
fi
sleep inf
