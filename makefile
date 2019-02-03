all: BootLoader Disk.img

BootLoader:
	@echo
	@echo == Build Boot Loader ==
	@echo

	make -C boot_loader

	@echo
	@echo == Build Complete ==
	@echo

Disk.img: boot_loader/BootLoader.bin
	@echo
	@echo == Disk Image Build Start ==
	@echo

	cp boot_loader/BootLoader.bin Disk.img

	@echo
	@echo == All Build Complete ==
	@echo

clean:
	make -C boot_loader clean
	rm -f Disk.img