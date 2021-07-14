DBPEDIA_STICKER	:= dbpedia_sticker.xml
DBPEDIA_FILES	:= \
	$(srcdir)/.gitignore \
	$(srcdir)/AUTHORS \
	$(srcdir)/COPYING \
	$(srcdir)/COPYING.md \
	$(srcdir)/LICENSE.md \
	$(srcdir)/Makefile.am \
	$(srcdir)/README.md \
	$(srcdir)/autogen.sh \
	$(srcdir)/configure.ac \
	$(srcdir)/dbpedia_sticker.xml \
	$(srcdir)/gen_version.sh \
	$(srcdir)/make_vad.sh \
	$(srcdir)/sql/*.sql \
	$(srcdir)/vad_version \
	$(srcdir)/vadpacker/*.py \
	$(srcdir)/vadpacker/.gitignore \
	$(srcdir)/vadpacker/AUTHORS \
	$(srcdir)/vadpacker/COPYING \
	$(srcdir)/vadpacker/ChangeLog \
	$(srcdir)/vadpacker/NEWS \
	$(srcdir)/vadpacker/README \
	$(srcdir)/vadpacker/README-elementtree \
	$(srcdir)/vadpacker/elementtree/*.py \
	$(srcdir)/www/*.vsp \
	$(srcdir)/www/statics/css/*.css \
	$(srcdir)/www/statics/fonts/glyphicons-halflings-regular.eot \
	$(srcdir)/www/statics/fonts/glyphicons-halflings-regular.svg \
	$(srcdir)/www/statics/fonts/glyphicons-halflings-regular.ttf \
	$(srcdir)/www/statics/fonts/glyphicons-halflings-regular.woff \
	$(srcdir)/www/statics/fonts/glyphicons-halflings-regular.woff2 \
	$(srcdir)/www/statics/images/*.gif \
	$(srcdir)/www/statics/images/*.png \
	$(srcdir)/www/statics/images/rdf_w3c.svg \
	$(srcdir)/www/statics/images/sw-vert-v.svg \
	$(srcdir)/www/statics/js/*.js

VERSION		:= $(shell ./gen_version.sh)
NEED_VERSION	:= 07.20.3226

vad_DATA 	:= dbpedia_dav.vad

dbpedia_dav.vad: $(DBPEDIA_FILES) $(DBPEDIA_STICKER) Makefile vad_version
	@PYTHON@ @VADPACKER@ -o dbpedia_dav.vad \
		--var="VERSION=$(VERSION)" \
		--var="BASE_PATH=/DAV/VAD" \
		--var="TYPE=dav" \
		--var="ISDAV=1" \
		--var="NEED_VERSION=$(NEED_VERSION)" \
		$(DBPEDIA_STICKER)
	ls -l dbpedia_dav.vad


CLEANFILES = *.vad

EXTRA_DIST = $(DBPEDIA_FILES) $(DBPEDIA_STICKER)
