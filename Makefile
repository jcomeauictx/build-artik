# Options are limited here since Samsung wiped the web clean of Artik
# sources and documentation under its control. So none of the shortcut
# methods will work.
all: release.sh
	./$< -c config/artik710_ubuntu.cfg --full-build --ubuntu
