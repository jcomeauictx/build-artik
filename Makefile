# Options are limited here since Samsung wiped the web clean of Artik
# sources and documentation under its control. So none of the shortcut
# methods will work.
all: release.sh
	./$< -c config/artik710_ubuntu.cfg --full-build --ubuntu 2>&1 \
	 | tee release.log
# The above doesn't work, we need:
# ../linux-artik/arch/arm64/boot/dts/nexell/overlays/s5p6818-artik710-*.dtbo
# and all we have is the .dtb file
# ../linux-artik/arch/arm64/boot/dts/nexell/s5p6818-artik710-raptor-rev03.dtb
