# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Less primitive drawing library for Wayland (pfr fork for neuwm)"
HOMEPAGE="https://git.sr.ht/~shrub900/neuwld"
EGIT_REPO_URI="https://git.sr.ht/~shrub900/neuwld"

LICENSE="MIT"
SLOT="0"

DEPEND="
	dev-libs/wayland
	x11-libs/libdrm
	x11-libs/pixman
"
RDEPEND="${DEPEND}"
BDEPEND="
	dev-util/wayland-scanner
	virtual/pkgconfig
"
