install:
	mkdir -p /etc/libvirt/hooks/
	cp monitor.sh /etc/libvirt/hooks/20-monitor.sh
	cp scream.sh /etc/libvirt/hooks/10-scream.sh
