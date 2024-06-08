#! /bin/sh

case "$1" in
	start)
		echo "Loading scull"
		insmod /lib/modules/$(uname -r)/extra/scull.ko
		;;
	stop)
		echo "Unloading scull"
		rmmod scull
		;;
	*)
		echo "Usage: $0 {start|stop}"
		exit 1
esac

exit 0
