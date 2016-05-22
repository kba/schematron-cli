PKG_NAME = schematron-cli
PKG_VERSION = 0.0.1

CP = cp -r
GIT_CLONE = git clone --depth 1
LN = ln -sf
MKDIR = mkdir -p
MV = mv -f
RM = rm -rfv
UNZIP = unzip -u
WGET = wget
ZIP = zip

PREFIX = $(DESTDIR)/usr/local
SHAREDIR = $(PREFIX)/share/$(PKG_NAME)
BINDIR = $(PREFIX)/bin

.PHONY: check \
	install uninstall \
	clean realclean \
	test \
	vendor

vendor:
	$(MKDIR) vendor
	cd vendor && $(MAKE)

test:
	@PATH=$(PWD)/bin:$(PATH) ./test/tsht
