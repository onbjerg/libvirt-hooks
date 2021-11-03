#!/bin/bash
set -e

SCREAM_INTERFACE="virbr0"
SCREAM_OUTPUT="pulse"
SCREAM_USER="oliver"

if [[ "$2/$3" == "started/begin" ]]; then
  # When guest starts, we start Scream
	sudo -u "$SCREAM_USER" PULSE_SERVER=/run/user/1000/pulse/native scream -i "$SCREAM_INTERFACE" -o "$SCREAM_OUTPUT" &
elif [[ "$2/$3" == "stopped/end" ]]; then
  # When guest stops, we kill Scream
	sudo -u "$SCREAM_USER" killall scream
else
  # We ignore all other hooks
	exit 0
fi
