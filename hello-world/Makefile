ARM64GNU=aarch64-linux-gnu

LD=$(ARM64GNU)-ld
AS=$(ARM64GNU)-as
CC=$(ARM64GNU)-gcc

CPU=cortex-a72

.PHONY: all

all: hello_world.elf

hello_world.elf: link_script.ld startup.o hello_world.o
	# Link the two object files to an elf file
	$(LD) -T link_script.ld startup.o hello_world.o -o $@

startup.o: startup.s
	$(AS) -mcpu=$(CPU) -o $@ $^

hello_world.o: hello_world.c
	$(CC) -c -o $@ $^

.PHONY: clean
clean:
	rm -f hello_world.o startup.o hello_world.elf

check: hello_world.elf
	qemu-system-aarch64 -M virt -cpu $(CPU) -nographic -kernel $<
