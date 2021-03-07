# dwm version
VERSION = 6.2

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/local/include
X11LIB = /usr/local/lib

PKG_CONFIG = pkg-config

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft

# includes and libs
INCS = -I$(X11INC) \
		`$(PKG_CONFIG) --cflags fontconfig`
LIBS = -L$(X11LIB) ${XINERAMALIBS} ${FREETYPELIBS} -lX11 \
		`$(PKG_CONFIG) --libs fontconfig`
	   

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os ${INCS} ${CPPFLAGS}
LDFLAGS  = ${LIBS}

# compiler and linker
CC = cc
