AC_INIT([LibHealpix.jl], [0.1.0])
AM_INIT_AUTOMAKE([foreign -Wall -Werror])
m4_ifdef([AM_PROG_AR], [AM_PROG_AR])
LT_INIT

AM_SILENT_RULES([yes])
AC_PROG_CXX

dnl
dnl Look for libhealpix_cxx with pkg-config.
dnl
PKG_CHECK_MODULES([HEALPIX_CXX], [healpix_cxx], , [HEALPIX_CXX_LIBS = -lhealpix_cxx])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
