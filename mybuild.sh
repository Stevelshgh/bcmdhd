export LINUXDIR=/gewu/home/geduer/gedulab/gdk8k
time bear --output compile_commands_bcmdhd.json -- make KBUILD_VERBOSE=2 V=1 quiet="" -j1 ARCH=arm64 bcmdhd_sdio
#time bear --output compile_commands_bcmdhd.json -- make -C $(LINUXDIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules CONFIG_BCMDHD=m CONFIG_BCMDHD_SDIO=y
#time make ARCH=arm64 bcmdhd_sdio
objdump --source --line-numbers --all-headers --demangle --disassemble bcmdhd.ko > bcmdhd.lst
