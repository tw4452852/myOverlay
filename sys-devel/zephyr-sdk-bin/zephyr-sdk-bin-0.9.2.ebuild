EAPI=5
inherit eutils

DESCRIPTION="Zephyr Binary SDK"
HOMEPAGE="http://docs.zephyrproject.org/getting_started/installation_linux.html"
SRC_URI="https://github.com/zephyrproject-rtos/meta-zephyr-sdk/releases/download/${PV}/zephyr-sdk-${PV}-setup.run"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 amd64-linux"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

src_unpack() {
	cd "${DISTDIR}"
	mkdir -p "${S}"
	cp "${A}" "${S}"
}

src_configure() {
	chmod +x "${A}"
}

src_compile() {
	:;
}

src_install() {
	echo "${ED}/opt/zephyr-sdk" | bash "${A}"
	chmod -R -x+X ${ED}/opt/zephyr-sdk
}
