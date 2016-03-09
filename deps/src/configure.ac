AC_INIT([LibHealpix.jl], [0.1.0])
AM_INIT_AUTOMAKE([foreign -Wall -Werror])
AM_PROG_AR
LT_INIT

AC_CONFIG_MACRO_DIR([m4])
AM_SILENT_RULES([yes])

AC_PROG_CXX

dnl
dnl Look for libhealpix_cxx with pkg-config.
dnl If we don't find it, assume that's because we built it
dnl ourselves and so it's installed to  deps/usr already.
dnl
PKG_CHECK_MODULES([HEALPIX_CXX], [healpix_cxx], , [HEALPIX_CXX_LIBS = -lhealpix_cxx])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
