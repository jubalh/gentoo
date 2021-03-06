# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Simple ASDF2 configuration for Gentoo Common Lisp ports"
HOMEPAGE="https://wiki.gentoo.org/wiki/Project:Common_Lisp/Guide"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lisp/asdf-2.0"

S="${WORKDIR}"

src_install() {
	insinto /etc/common-lisp
	newins "${FILESDIR}"/gentoo-init-1.lisp gentoo-init.lisp
	doins  "${FILESDIR}"/source-registry.conf
}
