# Copyright (C) 2009-2020 Simon Josefsson

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

CFGFLAGS = --enable-gtk-doc --enable-gtk-doc-pdf --enable-gcc-warnings	\
	--enable-root-tests --enable-valgrind-tests

ifeq ($(.DEFAULT_GOAL),abort-due-to-no-makefile)
.DEFAULT_GOAL := bootstrap
endif

INDENT_SOURCES = `find . -name '*.[ch]' | grep -v -e /gl/ -e build-aux`

autoreconf:
	printf "gdoc_MANS =\ngdoc_TEXINFOS =\n" > liboath/man/Makefile.gdoc
	printf "gdoc_MANS =\ngdoc_TEXINFOS =\n" > libpskc/man/Makefile.gdoc
	touch ChangeLog
	test -f configure || autoreconf --force --install

bootstrap: autoreconf
	test -f Makefile || ./configure $(CFGFLAGS)

# syntax-check
VC_LIST_ALWAYS_EXCLUDE_REGEX = ^GNUmakefile|maint.mk|build-aux/|gl/|m4/libxml2.m4|oathtool/doc/parse-datetime.texi|(liboath|libpskc)/man/gdoc|liboath/gtk-doc.make|libpskc/gtk-doc.make|libpskc/schemas/|(oathtool|liboath)/(build-aux|gl)/.*$$
# syntax-check: Project wide exceptions on philosophical grounds.
local-checks-to-skip = sc_GPL_version sc_immutable_NEWS	\
	sc_prohibit_strcmp
# syntax-check: Re-add when we have translation.
local-checks-to-skip += sc_unmarked_diagnostics sc_bindtextdomain
# syntax-check: Revisit these soon.
local-checks-to-skip += sc_prohibit_atoi_atof sc_prohibit_gnu_make_extensions
# syntax-check: Explicit syntax-check exceptions.
exclude_file_name_regexp--sc_program_name = ^liboath/tests/|libpskc/examples/|libpskc/tests/|pam_oath/tests/
exclude_file_name_regexp--sc_texinfo_acronym = ^oathtool/doc/parse-datetime.texi
exclude_file_name_regexp--sc_error_message_uppercase = ^oathtool/oathtool.c|pskctool/pskctool.c
exclude_file_name_regexp--sc_require_config_h = ^libpskc/examples/
exclude_file_name_regexp--sc_require_config_h_first = $(exclude_file_name_regexp--sc_require_config_h)
exclude_file_name_regexp--sc_trailing_blank = ^libpskc/examples/pskctool-h.txt
exclude_file_name_regexp--sc_two_space_separator_in_usage = ^pskctool/tests/

update-copyright-env = UPDATE_COPYRIGHT_HOLDER="Simon Josefsson" UPDATE_COPYRIGHT_USE_INTERVALS=2

glimport:
	cd liboath && gtkdocize --copy
	cd libpskc && gtkdocize --copy
	gnulib-tool --add-import
	cd liboath && gnulib-tool --add-import
	cd oathtool && gnulib-tool --add-import
	cd libpskc && gnulib-tool --add-import
	cd pskctool && gnulib-tool --add-import

review-diff:
	git diff `git describe --abbrev=0`.. \
	| grep -v -e ^index -e '^diff --git' \
	| filterdiff -p 1 -x 'build-aux/*' -x '*/build-aux/*' -x 'gl/*' -x '*/gl/*' -x 'gltests/*' -x '*/gltests/*' -x 'maint.mk' -x '.gitignore' -x '.x-sc*' -x 'ChangeLog' -x 'GNUmakefile' -x '.clcopying' \
	| less

# Release

tag = $(PACKAGE)-`echo $(VERSION) | sed 's/\./-/g'`
htmldir = ../www-$(PACKAGE)

ChangeLog:
	git2cl > ChangeLog
	cat .clcopying >> ChangeLog

tarball:
	test `git describe` = `git tag -l $(tag)`
	rm -f ChangeLog
	$(MAKE) ChangeLog distcheck

gtkdoc-copy:
	mkdir -p $(htmldir)/reference/ $(htmldir)/libpskc/
	cp -v liboath/gtk-doc/liboath.pdf \
		liboath/gtk-doc/html/*.html \
		liboath/gtk-doc/html/*.png \
		liboath/gtk-doc/html/*.devhelp2 \
		liboath/gtk-doc/html/*.css \
		$(htmldir)/reference/
	cp -v libpskc/gtk-doc/libpskc.pdf \
		libpskc/gtk-doc/html/*.html \
		libpskc/gtk-doc/html/*.png \
		libpskc/gtk-doc/html/*.devhelp2 \
		libpskc/gtk-doc/html/*.css \
		$(htmldir)/libpskc/

gtkdoc-upload:
	cd $(htmldir) && \
		git add --all reference && \
		git commit -m "Auto-update GTK-DOC liboath." reference/
	cd $(htmldir) && \
		git add --all libpskc && \
		git commit -m "Auto-update GTK-DOC libpskc." libpskc/

man-copy:
	groff -man -T html oathtool/oathtool.1  > $(htmldir)/man-oathtool.html

man-upload:
	cd $(htmldir) && \
		git commit -m "Auto-update man-oathtool.html." man-oathtool.html

.PHONY: website
website:
	cd website && ./build-website.sh

website-copy:
	mkdir -p $(htmldir)/liboath-api/ $(htmldir)/libpskc-api/
	cp website/*.html website/*.css $(htmldir)/
	cp website/liboath-api/*.html website/liboath-api/*.png \
		$(htmldir)/liboath-api/
	cp website/libpskc-api/*.html website/libpskc-api/*.png \
		$(htmldir)/libpskc-api/

website-upload:
	cd $(htmldir) && \
		git add --all *.html *.css && \
		git add --all liboath-api && \
		git add --all libpskc-api && \
		git commit -m "Auto-update." \
		git push

release-check: syntax-check tarball man-copy gtkdoc-copy website website-copy

release-upload-www: man-upload gtkdoc-upload website-upload

release-upload-ftp:
	gpg -b $(distdir).tar.gz
	gpg --verify $(distdir).tar.gz.sig
	mkdir -p ../releases/$(PACKAGE)/
	cp $(distdir).tar.gz $(distdir).tar.gz.sig ../releases/$(PACKAGE)/
	scp $(distdir).tar.gz $(distdir).tar.gz.sig jas@dl.sv.nongnu.org:/releases/oath-toolkit/
	git push
	git push --tags

tag: # Use "make tag VERSION=1.2.3"
	git tag -s -m $(VERSION) $(tag)

release: release-check release-upload-www release-upload-ftp
