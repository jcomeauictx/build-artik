# Options are limited here since Samsung wiped the web clean of Artik
# sources and documentation under its control. So none of the shortcut
# methods will work.
all: release.sh
	./$< -c config/artik710_ubuntu.cfg --full-build --ubuntu
# The above doesn't work, we need:
# ../linux-artik/arch/arm64/boot/dts/nexell/overlays/s5p6818-artik710-*.dtbo
# and all we have is the .dtb file
# ../linux-artik/arch/arm64/boot/dts/nexell/s5p6818-artik710-raptor-rev03.dtb
# see https://stackoverflow.com/a/36298460
# also: https://xilinx.github.io/kria-apps-docs/creating_applications/2022.1/build/html/docs/dtsi_dtbo_generation.html, specifically the command:
# `dtc -@ -O dtb -o pl.dtbo pl.dtsi`
