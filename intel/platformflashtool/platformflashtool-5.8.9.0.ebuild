# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="intel intel platform flash tool"
SRC_URI="http://mcg-depot.intel.com/artifactory/psi-tools/platform-flash-tool/releases/${PV}/${PN}_${PV}_internal_linux_x86_64.deb"
LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64"
IUSE="tw"

RDEPEND="
	sys-apps/keyutils
	sys-libs/libudev-compat
"
DEPEND=${RDEPEND}

src_unpack() {
	mkdir ${S}
	cd ${S}
	unpack ${A}
	mkdir ${S}/data
	tar -xf ./data.tar.gz -C ./data
}

src_install() {
	cp -R ${S}/data/* ${D} || die "install failed"
}
