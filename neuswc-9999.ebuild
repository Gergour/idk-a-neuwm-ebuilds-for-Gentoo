# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Slightly less simple Wayland compositor library (pfr fork for neuwm)"
HOMEPAGE="https://git.sr.ht/~pfr/neuswc"
EGIT_REPO_URI="https://git.sr.ht/~pfr/neuswc"

LICENSE="MIT"
SLOT="0"
IUSE="X"

DEPEND="
	dev-libs/libinput:=
	dev-libs/neuwld
	dev-libs/wayland
	virtual/udev
	x11-libs/libdrm
	x11-libs/libxkbcommon
	x11-libs/pixman
	X? (
		x11-libs/libxcb:=
		x11-libs/xcb-util-wm
	)
"
RDEPEND="${DEPEND}"
BDEPEND="
	dev-util/wayland-scanner
	virtual/pkgconfig
"
