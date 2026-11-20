# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Tiling, floating and scrolling Wayland compositor based on neuswc"
HOMEPAGE="https://git.sr.ht/~pfr/neuwm"
EGIT_REPO_URI="https://git.sr.ht/~pfr/neuwm"

LICENSE="Unlicense"
SLOT="0"
IUSE="+X tools"

DEPEND="
	dev-lang/luajit:2
	dev-libs/libinput:=
	dev-libs/neuipc
	dev-libs/neuwld
	dev-libs/wayland
	gui-libs/neuswc[X?]
	virtual/udev
	x11-libs/libdrm
	x11-libs/libxkbcommon
	x11-libs/pixman
	X? (
		x11-libs/libxcb:=
		x11-libs/xcb-util-wm
	)
"
RDEPEND="
	${DEPEND}
	tools? (
		media-gfx/imagemagick
		media-video/ffmpeg
	)
"
BDEPEND="
	dev-util/wayland-scanner
	virtual/pkgconfig
"

src_install() {
	meson_src_install

	if use tools && [[ -d "${S}/tools" ]]; then
		dobin "${S}"/tools/*
	fi
}
