AC_INIT([Netboost], 0.0.1)
AM_INIT_AUTOMAKE([1.9 foreign])

AC_CONFIG_MACRO_DIR([m4])

m4_include([m4/ax_gcc_x86_avx_xgetbv.m4])
m4_include([m4/ax_gcc_x86_cpuid.m4])
m4_include([m4/ax_check_compile_flag.m4])
m4_include([m4/ax_ext.m4])

# Checks for common programs using default macros
AC_PROG_CC
AC_PROG_CPP

# Current CPU 
AX_EXT

CC_ADD_FLAGS=""
AX_CHECK_COMPILE_FLAG(-Wno-deprecated, CC_ADD_FLAGS="$CC_ADD_FLAGS -Wno-deprecated", [])

AC_SUBST(CC_ADD_FLAGS)

AC_CONFIG_FILES([src/Makevars src/mcupgma/clustering_util/Makefile])
AC_CONFIG_HEADERS([src/config.h])

# AC_OUTPUT(src/Makevars src/mcupgma/clustering_util/Makefile src/netboost.h)
AC_OUTPUT
