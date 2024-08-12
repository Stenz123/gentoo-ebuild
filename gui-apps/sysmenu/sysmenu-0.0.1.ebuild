# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Sysmenu is a simple and efficient application launcher written in gtkmm4"
HOMEPAGE="https://github.com/Stenz123/sysmenu"
SRC_URI="https://github.com/Stenz123/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="WTFPL"
SLOT="0"
KEYWORDS="amd64"

DEPEND="dev-cpp/gtkmm gui-libs/gtk4-layer-shell"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile(){
	emake
}
src_install() {
	emake DESTDIR="${D}" LIBPREFIX="$(get_libdir)"  install || die "make install failed"
}
