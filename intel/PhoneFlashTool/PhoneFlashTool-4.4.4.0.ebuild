# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="phone flash tool"
SRC_URI="http://mcg-build-depot.jf.intel.com/tools/${PN}/releases/${PV}/${PN}_${PV}_linux_x86_64.deb"

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64"
IUSE="tw"

RDEPEND="
	dev-qt/qtxmlpatterns:4
	dev-qt/qtcore:4
	dev-qt/qtgui:4
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
