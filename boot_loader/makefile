all: BootLoader.bin

BootLoader.bin: boot_loader.asm
	nasm -o BootLoader.bin boot_loader.asm

clean:
	rm -f BootLoader.bin
