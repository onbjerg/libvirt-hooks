## libvirt Hooks

These are my hooks that I use for my VM setup with libvirt and VFIO.

### Installation

```
make install
```

### Hooks

There are currently only two hooks. One of them auto-switches my monitor input to the VM on boot (and the opposite on shutdown) using DDC.

The other one starts Scream for sound, and kills Scream when the VM is shut down.
