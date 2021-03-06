# -*- makefile -*-
# Copyright (C) 2002-2020 Simon Josefsson
#
# This file is part of GNU Libidn.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

BUILT_SOURCES = Makefile.gdoc

Makefile.gdoc: $(top_builddir)/configure Makefile.am gdoc.mk $(GDOC_SRC)
	$(AM_V_GEN) \
	echo '# This file is automatically generated.  DO NOT EDIT!          -*- makefile -*-' > Makefile.gdoc; \
	echo >> Makefile.gdoc; \
	echo 'gdoc_TEXINFOS =' >> Makefile.gdoc; \
	echo 'gdoc_MANS =' >> Makefile.gdoc; \
	echo >> Makefile.gdoc; \
	for file in $(GDOC_SRC); do \
	  shortfile=`basename $$file`; \
	  echo "#" >> Makefile.gdoc; \
	  echo "### $$shortfile" >> Makefile.gdoc; \
	  echo "#" >> Makefile.gdoc; \
	  echo "gdoc_TEXINFOS += $(GDOC_TEXI_PREFIX)$$shortfile.texi" >> Makefile.gdoc; \
	  echo "$(GDOC_TEXI_PREFIX)$$shortfile.texi: $$file" >> Makefile.gdoc; \
	  echo 'TAB$$(AM_V_GEN)mkdir -p `dirname $$@`' | sed "s/TAB/	/" >> Makefile.gdoc; \
	  echo 'TAB@$$(PERL) $(GDOC_BIN) -texinfo $$(GDOC_TEXI_EXTRA_ARGS) $$< > $$@' | sed "s/TAB/	/" >> Makefile.gdoc; \
	  echo >> Makefile.gdoc; \
	  functions=`$(PERL) $(srcdir)/gdoc -listfunc $$file`; \
	  for function in $$functions; do \
	    echo "# $$shortfile: $$function" >> Makefile.gdoc; \
	    echo "gdoc_TEXINFOS += $(GDOC_TEXI_PREFIX)$$function.texi" >> Makefile.gdoc; \
	    echo "$(GDOC_TEXI_PREFIX)$$function.texi: $$file" >> Makefile.gdoc; \
	    echo 'TAB$$(AM_V_GEN)mkdir -p `dirname $$@`' | sed "s/TAB/	/" >> Makefile.gdoc; \
	    echo 'TAB@$$(PERL) $(GDOC_BIN) -texinfo $$(GDOC_TEXI_EXTRA_ARGS) -function'" $$function"' $$< > $$@' | sed "s/TAB/	/" >> Makefile.gdoc; \
	    echo >> Makefile.gdoc; \
	    echo "gdoc_MANS += $(GDOC_MAN_PREFIX)$$function.3" >> Makefile.gdoc; \
	    echo "$(GDOC_MAN_PREFIX)$$function.3: $$file" >> Makefile.gdoc; \
	    echo 'TAB$$(AM_V_GEN)mkdir -p `dirname $$@`' | sed "s/TAB/	/" >> Makefile.gdoc; \
	    echo 'TAB@$$(PERL) $(GDOC_BIN) -man $$(GDOC_MAN_EXTRA_ARGS) -function'" $$function"' $$< > $$@' | sed "s/TAB/	/" >> Makefile.gdoc; \
	    echo >> Makefile.gdoc; \
	  done; \
	  echo >> Makefile.gdoc; \
	done; \
	$(MAKE) Makefile

include Makefile.gdoc
