## DO NOT EDIT! GENERATED AUTOMATICALLY!
## Process this file with automake to produce Makefile.in.
# Copyright (C) 2002-2021 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <https://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
# Reproduce by:
# gnulib-tool --import \
#  --lib=libgnu \
#  --source-base=gl \
#  --m4-base=gl/m4 \
#  --doc-base=doc \
#  --tests-base=gl/tests \
#  --aux-dir=build-aux \
#  --with-tests \
#  --lgpl=2 \
#  --no-conditional-dependencies \
#  --libtool \
#  --macro-prefix=gl \
#  base64 \
#  inttostr \
#  lib-symbol-versions \
#  lib-symbol-visibility \
#  manywarnings \
#  minmax \
#  strptime \
#  strverscmp \
#  valgrind-tests

AUTOMAKE_OPTIONS = 1.11 gnits

SUBDIRS =
noinst_HEADERS =
noinst_LIBRARIES =
noinst_LTLIBRARIES =
EXTRA_DIST =
BUILT_SOURCES =
SUFFIXES =
MOSTLYCLEANFILES = core *.stackdump
MOSTLYCLEANDIRS =
CLEANFILES =
DISTCLEANFILES =
MAINTAINERCLEANFILES =
# No GNU Make output.
SUBDIRS += . tests
EXTRA_DIST += m4/gnulib-cache.m4

AM_CPPFLAGS =
AM_CFLAGS =

noinst_LTLIBRARIES += libgnu.la

libgnu_la_SOURCES =
libgnu_la_LIBADD = $(gl_LTLIBOBJS)
libgnu_la_DEPENDENCIES = $(gl_LTLIBOBJS)
EXTRA_libgnu_la_SOURCES =
libgnu_la_LDFLAGS = $(AM_LDFLAGS)
libgnu_la_LDFLAGS += -no-undefined

## begin gnulib module absolute-header

# Use this preprocessor expression to decide whether #include_next works.
# Do not rely on a 'configure'-time test for this, since the expression
# might appear in an installed header, which is used by some other compiler.
HAVE_INCLUDE_NEXT = (__GNUC__ || __clang__ || 60000000 <= __DECC_VER)

## end   gnulib module absolute-header

## begin gnulib module base64

libgnu_la_SOURCES += base64.h base64.c

## end   gnulib module base64

## begin gnulib module intprops


EXTRA_DIST += intprops.h

## end   gnulib module intprops

## begin gnulib module inttostr

libgnu_la_SOURCES +=    imaxtostr.c    inttostr.c    offtostr.c    uinttostr.c    umaxtostr.c

EXTRA_DIST += anytostr.c inttostr.h

EXTRA_libgnu_la_SOURCES += anytostr.c

## end   gnulib module inttostr

## begin gnulib module lib-symbol-visibility

# The value of $(CFLAG_VISIBILITY) needs to be added to the CFLAGS for the
# compilation of all sources that make up the library. This line here does it
# only for the gnulib part of it. The developer is responsible for adding
# $(CFLAG_VISIBILITY) to the Makefile.ams of the other portions of the library.
AM_CFLAGS += $(CFLAG_VISIBILITY)

## end   gnulib module lib-symbol-visibility

## begin gnulib module libc-config


EXTRA_DIST += cdefs.h libc-config.h

## end   gnulib module libc-config

## begin gnulib module limits-h

BUILT_SOURCES += $(LIMITS_H)

# We need the following in order to create <limits.h> when the system
# doesn't have one that is compatible with GNU.
if GL_GENERATE_LIMITS_H
limits.h: limits.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_LIMITS_H''@|$(NEXT_LIMITS_H)|g' \
	      < $(srcdir)/limits.in.h; \
	} > $@-t && \
	mv $@-t $@
else
limits.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += limits.h limits.h-t

EXTRA_DIST += limits.in.h

## end   gnulib module limits-h

## begin gnulib module memchr


EXTRA_DIST += memchr.c memchr.valgrind

EXTRA_libgnu_la_SOURCES += memchr.c

## end   gnulib module memchr

## begin gnulib module minmax

libgnu_la_SOURCES += minmax.h

## end   gnulib module minmax

## begin gnulib module snippet/arg-nonnull

# Because this Makefile snippet defines a variable used by other
# gnulib Makefile snippets, it must be present in all makefiles that
# need it. This is ensured by the applicability 'all' defined above.

ARG_NONNULL_H=$(srcdir)/arg-nonnull.h

EXTRA_DIST += arg-nonnull.h

## end   gnulib module snippet/arg-nonnull

## begin gnulib module snippet/c++defs

# Because this Makefile snippet defines a variable used by other
# gnulib Makefile snippets, it must be present in all makefiles that
# need it. This is ensured by the applicability 'all' defined above.

CXXDEFS_H=$(srcdir)/c++defs.h

EXTRA_DIST += c++defs.h

## end   gnulib module snippet/c++defs

## begin gnulib module snippet/warn-on-use

# Because this Makefile snippet defines a variable used by other
# gnulib Makefile snippets, it must be present in all makefiles that
# need it. This is ensured by the applicability 'all' defined above.

WARN_ON_USE_H=$(srcdir)/warn-on-use.h

EXTRA_DIST += warn-on-use.h

## end   gnulib module snippet/warn-on-use

## begin gnulib module stdbool

BUILT_SOURCES += $(STDBOOL_H)

# We need the following in order to create <stdbool.h> when the system
# doesn't have one that works.
if GL_GENERATE_STDBOOL_H
stdbool.h: stdbool.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's/@''HAVE__BOOL''@/$(HAVE__BOOL)/g' < $(srcdir)/stdbool.in.h; \
	} > $@-t && \
	mv $@-t $@
else
stdbool.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += stdbool.h stdbool.h-t

EXTRA_DIST += stdbool.in.h

## end   gnulib module stdbool

## begin gnulib module stddef

BUILT_SOURCES += $(STDDEF_H)

# We need the following in order to create <stddef.h> when the system
# doesn't have one that works with the given compiler.
if GL_GENERATE_STDDEF_H
stddef.h: stddef.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_STDDEF_H''@|$(NEXT_STDDEF_H)|g' \
	      -e 's|@''HAVE_MAX_ALIGN_T''@|$(HAVE_MAX_ALIGN_T)|g' \
	      -e 's|@''HAVE_WCHAR_T''@|$(HAVE_WCHAR_T)|g' \
	      -e 's|@''REPLACE_NULL''@|$(REPLACE_NULL)|g' \
	      < $(srcdir)/stddef.in.h; \
	} > $@-t && \
	mv $@-t $@
else
stddef.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += stddef.h stddef.h-t

EXTRA_DIST += stddef.in.h

## end   gnulib module stddef

## begin gnulib module stdint

BUILT_SOURCES += $(STDINT_H)

# We need the following in order to create <stdint.h> when the system
# doesn't have one that works with the given compiler.
if GL_GENERATE_STDINT_H
stdint.h: stdint.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's/@''HAVE_STDINT_H''@/$(HAVE_STDINT_H)/g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_STDINT_H''@|$(NEXT_STDINT_H)|g' \
	      -e 's/@''HAVE_C99_STDINT_H''@/$(HAVE_C99_STDINT_H)/g' \
	      -e 's/@''HAVE_SYS_TYPES_H''@/$(HAVE_SYS_TYPES_H)/g' \
	      -e 's/@''HAVE_INTTYPES_H''@/$(HAVE_INTTYPES_H)/g' \
	      -e 's/@''HAVE_SYS_INTTYPES_H''@/$(HAVE_SYS_INTTYPES_H)/g' \
	      -e 's/@''HAVE_SYS_BITYPES_H''@/$(HAVE_SYS_BITYPES_H)/g' \
	      -e 's/@''HAVE_WCHAR_H''@/$(HAVE_WCHAR_H)/g' \
	      -e 's/@''APPLE_UNIVERSAL_BUILD''@/$(APPLE_UNIVERSAL_BUILD)/g' \
	      -e 's/@''BITSIZEOF_PTRDIFF_T''@/$(BITSIZEOF_PTRDIFF_T)/g' \
	      -e 's/@''PTRDIFF_T_SUFFIX''@/$(PTRDIFF_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_SIG_ATOMIC_T''@/$(BITSIZEOF_SIG_ATOMIC_T)/g' \
	      -e 's/@''HAVE_SIGNED_SIG_ATOMIC_T''@/$(HAVE_SIGNED_SIG_ATOMIC_T)/g' \
	      -e 's/@''SIG_ATOMIC_T_SUFFIX''@/$(SIG_ATOMIC_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_SIZE_T''@/$(BITSIZEOF_SIZE_T)/g' \
	      -e 's/@''SIZE_T_SUFFIX''@/$(SIZE_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_WCHAR_T''@/$(BITSIZEOF_WCHAR_T)/g' \
	      -e 's/@''HAVE_SIGNED_WCHAR_T''@/$(HAVE_SIGNED_WCHAR_T)/g' \
	      -e 's/@''WCHAR_T_SUFFIX''@/$(WCHAR_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_WINT_T''@/$(BITSIZEOF_WINT_T)/g' \
	      -e 's/@''HAVE_SIGNED_WINT_T''@/$(HAVE_SIGNED_WINT_T)/g' \
	      -e 's/@''WINT_T_SUFFIX''@/$(WINT_T_SUFFIX)/g' \
	      -e 's/@''GNULIBHEADERS_OVERRIDE_WINT_T''@/$(GNULIBHEADERS_OVERRIDE_WINT_T)/g' \
	      < $(srcdir)/stdint.in.h; \
	} > $@-t && \
	mv $@-t $@
else
stdint.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += stdint.h stdint.h-t

EXTRA_DIST += stdint.in.h

## end   gnulib module stdint

## begin gnulib module strcase


EXTRA_DIST += strcasecmp.c strncasecmp.c

EXTRA_libgnu_la_SOURCES += strcasecmp.c strncasecmp.c

## end   gnulib module strcase

## begin gnulib module string

BUILT_SOURCES += string.h

# We need the following in order to create <string.h> when the system
# doesn't have one that works with the given compiler.
string.h: string.in.h $(top_builddir)/config.status $(CXXDEFS_H) $(ARG_NONNULL_H) $(WARN_ON_USE_H)
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_STRING_H''@|$(NEXT_STRING_H)|g' \
	      -e 's/@''GNULIB_EXPLICIT_BZERO''@/$(GL_GNULIB_EXPLICIT_BZERO)/g' \
	      -e 's/@''GNULIB_FFSL''@/$(GL_GNULIB_FFSL)/g' \
	      -e 's/@''GNULIB_FFSLL''@/$(GL_GNULIB_FFSLL)/g' \
	      -e 's/@''GNULIB_MBSLEN''@/$(GL_GNULIB_MBSLEN)/g' \
	      -e 's/@''GNULIB_MBSNLEN''@/$(GL_GNULIB_MBSNLEN)/g' \
	      -e 's/@''GNULIB_MBSCHR''@/$(GL_GNULIB_MBSCHR)/g' \
	      -e 's/@''GNULIB_MBSRCHR''@/$(GL_GNULIB_MBSRCHR)/g' \
	      -e 's/@''GNULIB_MBSSTR''@/$(GL_GNULIB_MBSSTR)/g' \
	      -e 's/@''GNULIB_MBSCASECMP''@/$(GL_GNULIB_MBSCASECMP)/g' \
	      -e 's/@''GNULIB_MBSNCASECMP''@/$(GL_GNULIB_MBSNCASECMP)/g' \
	      -e 's/@''GNULIB_MBSPCASECMP''@/$(GL_GNULIB_MBSPCASECMP)/g' \
	      -e 's/@''GNULIB_MBSCASESTR''@/$(GL_GNULIB_MBSCASESTR)/g' \
	      -e 's/@''GNULIB_MBSCSPN''@/$(GL_GNULIB_MBSCSPN)/g' \
	      -e 's/@''GNULIB_MBSPBRK''@/$(GL_GNULIB_MBSPBRK)/g' \
	      -e 's/@''GNULIB_MBSSPN''@/$(GL_GNULIB_MBSSPN)/g' \
	      -e 's/@''GNULIB_MBSSEP''@/$(GL_GNULIB_MBSSEP)/g' \
	      -e 's/@''GNULIB_MBSTOK_R''@/$(GL_GNULIB_MBSTOK_R)/g' \
	      -e 's/@''GNULIB_MEMCHR''@/$(GL_GNULIB_MEMCHR)/g' \
	      -e 's/@''GNULIB_MEMMEM''@/$(GL_GNULIB_MEMMEM)/g' \
	      -e 's/@''GNULIB_MEMPCPY''@/$(GL_GNULIB_MEMPCPY)/g' \
	      -e 's/@''GNULIB_MEMRCHR''@/$(GL_GNULIB_MEMRCHR)/g' \
	      -e 's/@''GNULIB_RAWMEMCHR''@/$(GL_GNULIB_RAWMEMCHR)/g' \
	      -e 's/@''GNULIB_STPCPY''@/$(GL_GNULIB_STPCPY)/g' \
	      -e 's/@''GNULIB_STPNCPY''@/$(GL_GNULIB_STPNCPY)/g' \
	      -e 's/@''GNULIB_STRCHRNUL''@/$(GL_GNULIB_STRCHRNUL)/g' \
	      -e 's/@''GNULIB_STRDUP''@/$(GL_GNULIB_STRDUP)/g' \
	      -e 's/@''GNULIB_STRNCAT''@/$(GL_GNULIB_STRNCAT)/g' \
	      -e 's/@''GNULIB_STRNDUP''@/$(GL_GNULIB_STRNDUP)/g' \
	      -e 's/@''GNULIB_STRNLEN''@/$(GL_GNULIB_STRNLEN)/g' \
	      -e 's/@''GNULIB_STRPBRK''@/$(GL_GNULIB_STRPBRK)/g' \
	      -e 's/@''GNULIB_STRSEP''@/$(GL_GNULIB_STRSEP)/g' \
	      -e 's/@''GNULIB_STRSTR''@/$(GL_GNULIB_STRSTR)/g' \
	      -e 's/@''GNULIB_STRCASESTR''@/$(GL_GNULIB_STRCASESTR)/g' \
	      -e 's/@''GNULIB_STRTOK_R''@/$(GL_GNULIB_STRTOK_R)/g' \
	      -e 's/@''GNULIB_STRERROR''@/$(GL_GNULIB_STRERROR)/g' \
	      -e 's/@''GNULIB_STRERROR_R''@/$(GL_GNULIB_STRERROR_R)/g' \
	      -e 's/@''GNULIB_STRERRORNAME_NP''@/$(GL_GNULIB_STRERRORNAME_NP)/g' \
	      -e 's/@''GNULIB_SIGABBREV_NP''@/$(GL_GNULIB_SIGABBREV_NP)/g' \
	      -e 's/@''GNULIB_SIGDESCR_NP''@/$(GL_GNULIB_SIGDESCR_NP)/g' \
	      -e 's/@''GNULIB_STRSIGNAL''@/$(GL_GNULIB_STRSIGNAL)/g' \
	      -e 's/@''GNULIB_STRVERSCMP''@/$(GL_GNULIB_STRVERSCMP)/g' \
	      -e 's/@''GNULIB_MDA_MEMCCPY''@/$(GL_GNULIB_MDA_MEMCCPY)/g' \
	      -e 's/@''GNULIB_MDA_STRDUP''@/$(GL_GNULIB_MDA_STRDUP)/g' \
	      < $(srcdir)/string.in.h | \
	  sed -e 's|@''HAVE_EXPLICIT_BZERO''@|$(HAVE_EXPLICIT_BZERO)|g' \
	      -e 's|@''HAVE_FFSL''@|$(HAVE_FFSL)|g' \
	      -e 's|@''HAVE_FFSLL''@|$(HAVE_FFSLL)|g' \
	      -e 's|@''HAVE_MBSLEN''@|$(HAVE_MBSLEN)|g' \
	      -e 's|@''HAVE_DECL_MEMMEM''@|$(HAVE_DECL_MEMMEM)|g' \
	      -e 's|@''HAVE_MEMPCPY''@|$(HAVE_MEMPCPY)|g' \
	      -e 's|@''HAVE_DECL_MEMRCHR''@|$(HAVE_DECL_MEMRCHR)|g' \
	      -e 's|@''HAVE_RAWMEMCHR''@|$(HAVE_RAWMEMCHR)|g' \
	      -e 's|@''HAVE_STPCPY''@|$(HAVE_STPCPY)|g' \
	      -e 's|@''HAVE_STPNCPY''@|$(HAVE_STPNCPY)|g' \
	      -e 's|@''HAVE_STRCHRNUL''@|$(HAVE_STRCHRNUL)|g' \
	      -e 's|@''HAVE_DECL_STRDUP''@|$(HAVE_DECL_STRDUP)|g' \
	      -e 's|@''HAVE_DECL_STRNDUP''@|$(HAVE_DECL_STRNDUP)|g' \
	      -e 's|@''HAVE_DECL_STRNLEN''@|$(HAVE_DECL_STRNLEN)|g' \
	      -e 's|@''HAVE_STRPBRK''@|$(HAVE_STRPBRK)|g' \
	      -e 's|@''HAVE_STRSEP''@|$(HAVE_STRSEP)|g' \
	      -e 's|@''HAVE_STRCASESTR''@|$(HAVE_STRCASESTR)|g' \
	      -e 's|@''HAVE_DECL_STRTOK_R''@|$(HAVE_DECL_STRTOK_R)|g' \
	      -e 's|@''HAVE_DECL_STRERROR_R''@|$(HAVE_DECL_STRERROR_R)|g' \
	      -e 's|@''HAVE_STRERRORNAME_NP''@|$(HAVE_STRERRORNAME_NP)|g' \
	      -e 's|@''HAVE_SIGABBREV_NP''@|$(HAVE_SIGABBREV_NP)|g' \
	      -e 's|@''HAVE_SIGDESCR_NP''@|$(HAVE_SIGDESCR_NP)|g' \
	      -e 's|@''HAVE_DECL_STRSIGNAL''@|$(HAVE_DECL_STRSIGNAL)|g' \
	      -e 's|@''HAVE_STRVERSCMP''@|$(HAVE_STRVERSCMP)|g' \
	      -e 's|@''REPLACE_FFSLL''@|$(REPLACE_FFSLL)|g' \
	      -e 's|@''REPLACE_MEMCHR''@|$(REPLACE_MEMCHR)|g' \
	      -e 's|@''REPLACE_MEMMEM''@|$(REPLACE_MEMMEM)|g' \
	      -e 's|@''REPLACE_STPNCPY''@|$(REPLACE_STPNCPY)|g' \
	      -e 's|@''REPLACE_STRCHRNUL''@|$(REPLACE_STRCHRNUL)|g' \
	      -e 's|@''REPLACE_STRDUP''@|$(REPLACE_STRDUP)|g' \
	      -e 's|@''REPLACE_STRNCAT''@|$(REPLACE_STRNCAT)|g' \
	      -e 's|@''REPLACE_STRNDUP''@|$(REPLACE_STRNDUP)|g' \
	      -e 's|@''REPLACE_STRNLEN''@|$(REPLACE_STRNLEN)|g' \
	      -e 's|@''REPLACE_STRSTR''@|$(REPLACE_STRSTR)|g' \
	      -e 's|@''REPLACE_STRCASESTR''@|$(REPLACE_STRCASESTR)|g' \
	      -e 's|@''REPLACE_STRTOK_R''@|$(REPLACE_STRTOK_R)|g' \
	      -e 's|@''REPLACE_STRERROR''@|$(REPLACE_STRERROR)|g' \
	      -e 's|@''REPLACE_STRERROR_R''@|$(REPLACE_STRERROR_R)|g' \
	      -e 's|@''REPLACE_STRERRORNAME_NP''@|$(REPLACE_STRERRORNAME_NP)|g' \
	      -e 's|@''REPLACE_STRSIGNAL''@|$(REPLACE_STRSIGNAL)|g' \
	      -e 's|@''UNDEFINE_STRTOK_R''@|$(UNDEFINE_STRTOK_R)|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r $(CXXDEFS_H)' \
	      -e '/definition of _GL_ARG_NONNULL/r $(ARG_NONNULL_H)' \
	      -e '/definition of _GL_WARN_ON_USE/r $(WARN_ON_USE_H)'; \
	      < $(srcdir)/string.in.h; \
	} > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += string.h string.h-t

EXTRA_DIST += string.in.h

## end   gnulib module string

## begin gnulib module strings

BUILT_SOURCES += strings.h

# We need the following in order to create <strings.h> when the system
# doesn't have one that works with the given compiler.
strings.h: strings.in.h $(top_builddir)/config.status $(CXXDEFS_H) $(WARN_ON_USE_H) $(ARG_NONNULL_H)
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_STRINGS_H''@|$(HAVE_STRINGS_H)|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_STRINGS_H''@|$(NEXT_STRINGS_H)|g' \
	      -e 's/@''GNULIB_FFS''@/$(GL_GNULIB_FFS)/g' \
	      -e 's|@''HAVE_FFS''@|$(HAVE_FFS)|g' \
	      -e 's|@''HAVE_STRCASECMP''@|$(HAVE_STRCASECMP)|g' \
	      -e 's|@''HAVE_DECL_STRNCASECMP''@|$(HAVE_DECL_STRNCASECMP)|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r $(CXXDEFS_H)' \
	      -e '/definition of _GL_ARG_NONNULL/r $(ARG_NONNULL_H)' \
	      -e '/definition of _GL_WARN_ON_USE/r $(WARN_ON_USE_H)' \
	      < $(srcdir)/strings.in.h; \
	} > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += strings.h strings.h-t

EXTRA_DIST += strings.in.h

## end   gnulib module strings

## begin gnulib module strptime


EXTRA_DIST += strptime.c

EXTRA_libgnu_la_SOURCES += strptime.c

## end   gnulib module strptime

## begin gnulib module strverscmp


EXTRA_DIST += strverscmp.c

EXTRA_libgnu_la_SOURCES += strverscmp.c

## end   gnulib module strverscmp

## begin gnulib module sys_time

BUILT_SOURCES += sys/time.h

# We need the following in order to create <sys/time.h> when the system
# doesn't have one that works with the given compiler.
sys/time.h: sys_time.in.h $(top_builddir)/config.status $(CXXDEFS_H) $(ARG_NONNULL_H) $(WARN_ON_USE_H)
	$(AM_V_at)$(MKDIR_P) sys
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's/@''HAVE_SYS_TIME_H''@/$(HAVE_SYS_TIME_H)/g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_SYS_TIME_H''@|$(NEXT_SYS_TIME_H)|g' \
	      -e 's/@''GNULIB_GETTIMEOFDAY''@/$(GL_GNULIB_GETTIMEOFDAY)/g' \
	      -e 's|@''HAVE_WINSOCK2_H''@|$(HAVE_WINSOCK2_H)|g' \
	      -e 's/@''HAVE_GETTIMEOFDAY''@/$(HAVE_GETTIMEOFDAY)/g' \
	      -e 's/@''HAVE_STRUCT_TIMEVAL''@/$(HAVE_STRUCT_TIMEVAL)/g' \
	      -e 's/@''REPLACE_GETTIMEOFDAY''@/$(REPLACE_GETTIMEOFDAY)/g' \
	      -e 's/@''REPLACE_STRUCT_TIMEVAL''@/$(REPLACE_STRUCT_TIMEVAL)/g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r $(CXXDEFS_H)' \
	      -e '/definition of _GL_ARG_NONNULL/r $(ARG_NONNULL_H)' \
	      -e '/definition of _GL_WARN_ON_USE/r $(WARN_ON_USE_H)' \
	      < $(srcdir)/sys_time.in.h; \
	} > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += sys/time.h sys/time.h-t

EXTRA_DIST += sys_time.in.h

## end   gnulib module sys_time

## begin gnulib module sys_types

BUILT_SOURCES += sys/types.h

# We need the following in order to create <sys/types.h> when the system
# doesn't have one that works with the given compiler.
sys/types.h: sys_types.in.h $(top_builddir)/config.status
	$(AM_V_at)$(MKDIR_P) sys
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_SYS_TYPES_H''@|$(NEXT_SYS_TYPES_H)|g' \
	      -e 's|@''WINDOWS_64_BIT_OFF_T''@|$(WINDOWS_64_BIT_OFF_T)|g' \
	      -e 's|@''WINDOWS_STAT_INODES''@|$(WINDOWS_STAT_INODES)|g' \
	      < $(srcdir)/sys_types.in.h; \
	} > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += sys/types.h sys/types.h-t

EXTRA_DIST += sys_types.in.h

## end   gnulib module sys_types

## begin gnulib module time

BUILT_SOURCES += time.h

# We need the following in order to create <time.h> when the system
# doesn't have one that works with the given compiler.
time.h: time.in.h $(top_builddir)/config.status $(CXXDEFS_H) $(ARG_NONNULL_H) $(WARN_ON_USE_H)
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_TIME_H''@|$(NEXT_TIME_H)|g' \
	      -e 's/@''GNULIB_CTIME''@/$(GL_GNULIB_CTIME)/g' \
	      -e 's/@''GNULIB_LOCALTIME''@/$(GL_GNULIB_LOCALTIME)/g' \
	      -e 's/@''GNULIB_MKTIME''@/$(GL_GNULIB_MKTIME)/g' \
	      -e 's/@''GNULIB_NANOSLEEP''@/$(GL_GNULIB_NANOSLEEP)/g' \
	      -e 's/@''GNULIB_STRFTIME''@/$(GL_GNULIB_STRFTIME)/g' \
	      -e 's/@''GNULIB_STRPTIME''@/$(GL_GNULIB_STRPTIME)/g' \
	      -e 's/@''GNULIB_TIMEGM''@/$(GL_GNULIB_TIMEGM)/g' \
	      -e 's/@''GNULIB_TIMESPEC_GET''@/$(GL_GNULIB_TIMESPEC_GET)/g' \
	      -e 's/@''GNULIB_TIME_R''@/$(GL_GNULIB_TIME_R)/g' \
	      -e 's/@''GNULIB_TIME_RZ''@/$(GL_GNULIB_TIME_RZ)/g' \
	      -e 's/@''GNULIB_TZSET''@/$(GL_GNULIB_TZSET)/g' \
	      -e 's/@''GNULIB_MDA_TZSET''@/$(GL_GNULIB_MDA_TZSET)/g' \
	      -e 's|@''HAVE_DECL_LOCALTIME_R''@|$(HAVE_DECL_LOCALTIME_R)|g' \
	      -e 's|@''HAVE_NANOSLEEP''@|$(HAVE_NANOSLEEP)|g' \
	      -e 's|@''HAVE_STRPTIME''@|$(HAVE_STRPTIME)|g' \
	      -e 's|@''HAVE_TIMEGM''@|$(HAVE_TIMEGM)|g' \
	      -e 's|@''HAVE_TIMESPEC_GET''@|$(HAVE_TIMESPEC_GET)|g' \
	      -e 's|@''HAVE_TIMEZONE_T''@|$(HAVE_TIMEZONE_T)|g' \
	      -e 's|@''REPLACE_CTIME''@|$(REPLACE_CTIME)|g' \
	      -e 's|@''REPLACE_GMTIME''@|$(REPLACE_GMTIME)|g' \
	      -e 's|@''REPLACE_LOCALTIME''@|$(REPLACE_LOCALTIME)|g' \
	      -e 's|@''REPLACE_LOCALTIME_R''@|$(REPLACE_LOCALTIME_R)|g' \
	      -e 's|@''REPLACE_MKTIME''@|$(REPLACE_MKTIME)|g' \
	      -e 's|@''REPLACE_NANOSLEEP''@|$(REPLACE_NANOSLEEP)|g' \
	      -e 's|@''REPLACE_STRFTIME''@|$(REPLACE_STRFTIME)|g' \
	      -e 's|@''REPLACE_TIMEGM''@|$(REPLACE_TIMEGM)|g' \
	      -e 's|@''REPLACE_TZSET''@|$(REPLACE_TZSET)|g' \
	      -e 's|@''PTHREAD_H_DEFINES_STRUCT_TIMESPEC''@|$(PTHREAD_H_DEFINES_STRUCT_TIMESPEC)|g' \
	      -e 's|@''SYS_TIME_H_DEFINES_STRUCT_TIMESPEC''@|$(SYS_TIME_H_DEFINES_STRUCT_TIMESPEC)|g' \
	      -e 's|@''TIME_H_DEFINES_STRUCT_TIMESPEC''@|$(TIME_H_DEFINES_STRUCT_TIMESPEC)|g' \
	      -e 's|@''UNISTD_H_DEFINES_STRUCT_TIMESPEC''@|$(UNISTD_H_DEFINES_STRUCT_TIMESPEC)|g' \
	      -e 's|@''TIME_H_DEFINES_TIME_UTC''@|$(TIME_H_DEFINES_TIME_UTC)|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r $(CXXDEFS_H)' \
	      -e '/definition of _GL_ARG_NONNULL/r $(ARG_NONNULL_H)' \
	      -e '/definition of _GL_WARN_ON_USE/r $(WARN_ON_USE_H)' \
	      < $(srcdir)/time.in.h; \
	} > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += time.h time.h-t

EXTRA_DIST += time.in.h

## end   gnulib module time

## begin gnulib module time_r


EXTRA_DIST += time_r.c

EXTRA_libgnu_la_SOURCES += time_r.c

## end   gnulib module time_r


mostlyclean-local: mostlyclean-generic
	@for dir in '' $(MOSTLYCLEANDIRS); do \
	  if test -n "$$dir" && test -d $$dir; then \
	    echo "rmdir $$dir"; rmdir $$dir; \
	  fi; \
	done; \
	:
