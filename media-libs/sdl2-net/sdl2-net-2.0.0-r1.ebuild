# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/sdl2-net/sdl2-net-2.0.0-r1.ebuild,v 1.3 2015/03/22 06:16:42 mr_bones_ Exp $

EAPI=5
inherit eutils multilib-minimal

MY_P=SDL2_net-${PV}
DESCRIPTION="Simple Direct Media Layer Network Support Library"
HOMEPAGE="http://www.libsdl.org/projects/SDL_net/index.html"
SRC_URI="http://www.libsdl.org/projects/SDL_net/release/${MY_P}.tar.gz"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="static-libs"

RDEPEND=">=media-libs/libsdl2-2.0.1-r1[${MULTILIB_USEDEP}]"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${MY_P}

multilib_src_configure() {
	ECONF_SOURCE="${S}" econf \
		--disable-gui \
		$(use_enable static-libs static)
}

multilib_src_install() {
	emake DESTDIR="${D}" install
}

multilib_src_install_all() {
	dodoc {CHANGES,README}.txt
	use static-libs || prune_libtool_files
}
