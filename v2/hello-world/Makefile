ARM64GNU=aarch64-linux-gnu

.PHONY: all
all: initramfs.cpio.gz

check: initramfs.cpio.gz
	qemu-system-aarch64 -machine virt     			  						\
		-cpu cortex-a72     																		\
		-nographic          																		\
		-smp 1              																		\
		-m 2048             																		\
		-kernel /linux/arch/arm64/boot/Image                    \
		-append "root=/dev/ram0 rootfstype=ramfs rw init=/init" \
		-initrd $<

init: init.c rootfs
	$(ARM64GNU)-gcc -o rootfs/$@ $< -static

initramfs.cpio.gz: rootfs init 
	(cd $< && find . | cpio -o -H newc | gzip) > $@

rootfs:
	mkdir -p rootfs

.PHONY: clean
clean:
	rm -rf init initramfs.cpio.gz rootfs
