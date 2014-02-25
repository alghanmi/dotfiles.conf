#!/bin/bash
if [ -f /var/run/reboot-required ]; then
	echo "↺"
else
	echo "⚡"
fi
