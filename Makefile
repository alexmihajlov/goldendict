# $OpenBSD: Makefile,v 1.4 2020/08/20 20:50:02 noiseless Exp $

PKGNAME =	${N}-${V}
N =		goldendict
V =		1.5.0RC2.20221223
REVISION =	0
COMMENT =	Feature-rich dictionary lookup program
DISTNAME =	${GH_TAGNAME}
CATEGORIES =	textproc local

GH_ACCOUNT =	${N}
GH_PROJECT =	${N}
GH_TAGNAME =	9a5e1e891027e1a347369973ebd79d62b7922c61

HOMEPAGE =	http://goldendict.org/
MAINTAINER =	S, Aleksandr Mikhaylov <alex@alexmihajlov.ru>

# GPLv3+
PERMIT_PACKAGE =	Yes

LIB_DEPENDS +=	x11/qt5/qtwebkit x11/qt5/qttools x11/qt5/qtsvg
LIB_DEPENDS +=	x11/qt5/qtx11extras audio/libao graphics/ffmpeg
LIB_DEPENDS +=	textproc/hunspell

WANTLIB += 	${COMPILER_LIBCXX} c Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB +=	GL Qt5Network Qt5PrintSupport Qt5Sql Qt5Xml Qt5Help X11 Xtst
WANTLIB +=	Qt5WebKit Qt5WebKitWidgets Qt5Svg ogg vorbis vorbisfile
WANTLIB +=	bz2 iconv lzma lzo2 tiff avcodec avformat avutil
WANTLIB +=	swresample execinfo hunspell-1.7 zstd ao m z

MODULES =	x11/qt5 devel/qmake
CONFIGURE_STYLE =	qmake

MODQMAKE_PROJECTS =	${N}.pro
MODQMAKE_RECURSIVE =	No
MODQMAKE_ARGS =		CONFIG+="zim_support" \
			CONFIG+="no_qtmultimedia_player" \
			CONFIG+="no_epwing_support" \
			CONFIG+="no_ffmpeg_player"

.include <bsd.port.mk>
