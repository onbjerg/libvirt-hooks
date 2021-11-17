## libvirt Hooks

These are my hooks that I use for my VM setup with libvirt and VFIO.

### Installation

```
make install
```

### Hooks

Each hook must be configured separately.

#### Scream

This hook starts and stops Scream with the VM.

#### Monitor

This hook switches display inputs when the VM boots and shuts down.

#### USB Hotplugging

This script lives outside of the hooks directory and runs based on udev rules (see [udev](./udev)) to attach and detach USB devices while the VM is running.
