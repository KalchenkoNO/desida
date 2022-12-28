# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Helper files to make sway a better experience for us poor NVIDIA users"
HOMEPAGE="https://github.com/crispyricepc/sway-nvidia"
SRC_URI="https://github.com/crispyricepc/sway-nvidia/archive/refs/tags/1.0.7.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="gui-wm/sway x11-drivers/nvidia-drivers[wayland(+)]"
RDEPEND="${DEPEND}"

src_install() {
	into /usr/
	newbin sway-nvidia.sh sway-nvidia

	insopts -m644
	insinto /usr/share/wayland-sessions/
	doins sway-nvidia.desktop

	insinto /usr/share/wlroots-nvidia/
	doins wlroots-env-nvidia.sh
}
