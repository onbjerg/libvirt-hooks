install:
	mkdir -p /etc/libvirt/hooks/
	ln -sf hooks/monitor.sh /etc/libvirt/hooks/20-monitor.sh
	ln -sf hooks/scream.sh /etc/libvirt/hooks/10-scream.sh
	mkdir -p /opt/usb-libvirt-hotplug
	ln -sf hooks/usb-libvirt-hotplug.sh /opt/usb-libvirt-hotplug/usb-libvirt-hotplug.sh
