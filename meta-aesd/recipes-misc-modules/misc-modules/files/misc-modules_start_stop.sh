#! /bin/sh

case "$1" in
	start)
		echo "Loading faulty"
		insmod /lib/modules/$(uname -r)/extra/faulty.ko
		echo "Loading hello"
		insmod /lib/modules/$(uname -r)/extra/hello.ko
		;;
	stop)
		echo "Unloading faulty"
		rmmod faulty
		echo "Unloading hello"
		rmmod hello
		;;
	*)
		echo "Usage: $0 {start|stop}"
		exit 1
esac

exit 0
