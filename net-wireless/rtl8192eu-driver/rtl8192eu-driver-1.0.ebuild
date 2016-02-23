# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-drivers/nvidia-drivers/nvidia-drivers-173.14.39.ebuild,v 1.10 2015/05/30 12:30:31 jer Exp $

EAPI=5

inherit linux-mod

DESCRIPTION="rtl8192eu driver"
SRC_URI="https://github.com/tw4452852/rtl8192eu-driver/raw/master/${PN}-${PV}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=" "
RDEPEND="${DEPEND}"

S=${WORKDIR}
BUILD_TARGETS="clean modules"
MODULE_NAMES="8192eu(drivers/net/wireless:${S})"
