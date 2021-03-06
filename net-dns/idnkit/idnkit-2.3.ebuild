# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit ltprune

DESCRIPTION="Toolkit for Internationalized Domain Names (IDN)"
HOMEPAGE="https://jprs.co.jp/idn/"
SRC_URI="${HOMEPAGE}${P}.tar.bz2"

LICENSE="JPRS"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~amd64-fbsd ~x86-fbsd"
IUSE="liteonly static-libs"
DEPEND="
	virtual/libiconv
"
RDEPEND="
	${DEPEND}
"
PATCHES=(
	"${FILESDIR}"/${PN}-2.3-log_h.patch
)

src_configure() {
	econf \
		$(use_enable static-libs static) \
		$(use_enable liteonly)
}

src_install() {
	default

	prune_libtool_files
}
