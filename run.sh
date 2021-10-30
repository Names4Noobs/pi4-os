#!/bin/sh

CMD=$1

#"$AARCH64_QEMU_BIN" \
#		-machine raspi3 \
#		-serial stdio   \
#		-kernel kernel8.img

run_qemu() {
 "$AARCH64_QEMU_BIN" \
     -M raspi3 \
     -serial stdio   \
     -kernel kernel8.img
}

if [ "$CMD" = "raspi3" ]
then
		echo "Running raspi3 machine"
		run_qemu
		
else

	echo "Entered $CMD"
 
fi
