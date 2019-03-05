# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# XXX: the tarball here is just the kernel modules split out of the binary
#      package that comes from virtualbox-bin

EAPI=7

inherit linux-info linux-mod

DESCRIPTION="Kernel Modules for simics vmp"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"

S="${WORKDIR}"
BUILD_TARGETS="all"
BUILD_TARGET_ARCH="${ARCH}"

pkg_setup() {
	get_version
	MODULE_NAMES="vmxmon(extra:${S}/vmxmon:${S}/vmxmon/build-vmxmon/${KV_FULL})"
	linux-mod_pkg_setup
}

src_unpack() {
    cp -r /home/tw/work/simics/simics-5/simics-${PV}/vmxmon ${S} || die
}
