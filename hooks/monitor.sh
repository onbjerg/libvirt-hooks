#!/bin/bash
set -e

# Display number from `ddcutil detect` that the VM and host is connected to
DDISPLAY="1"
# The input on that display that the VM is connected to
# (`dductil -d $DDISPLAY capabilities`) without the 0x prefix
VM_INPUT="11" # HDMI-1
# The input that the host is connected to on $DDISPLAY (same procedure as above)
HOST_INPUT="0f" # DisplayPort-1

if [[ "$2/$3" == "started/begin" ]]; then
  # When guest begins, we switch to VM input
	INPUT="$VM_INPUT"
elif [[ "$2/$3" == "stopped/end" ]]; then
  # When guest stops, we switch to host input, and kill Scream
	INPUT="$HOST_INPUT"
else
  # We ignore all other hooks
	exit 0
fi

# Switch display input if it hasn't already been
if [[ "$(ddcutil -d "$DDISPLAY" getvcp 60 --terse | awk '{print $4}')" != "x$INPUT" ]]; then
    ddcutil -d "$DDISPLAY" setvcp 60 "0x$INPUT"
fi
