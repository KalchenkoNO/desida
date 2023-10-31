# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="OpenRC init script, to mount devices before dmcrypt init script executed"
HOMEPAGE="https://github.com/KalchenkoNO/dmcrypt-premount/"
SRC_URI="https://github.com/KalchenkoNO/dmcrypt-premount/archive/refs/tags/1.0.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="sys-fs/cryptsetup"
RDEPEND="${DEPEND}"

src_install() {
	into /usr/
	newbin dmcrypt-premount.sh dmcrypt-premount

	newinitd dmcrypt-premount.initd dmcrypt-premount

	newconfd dmcrypt-premount.confd dmcrypt-premount
}
