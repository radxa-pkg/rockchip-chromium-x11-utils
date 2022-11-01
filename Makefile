PROJECT ?= rockchip-chromium-x11-utils
PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
LIBDIR ?= $(PREFIX)/lib

.PHONY: all
all:

#
# Test
#
.PHONY: test
test:
	echo "nothing"

#
# Install
#
.PHONY: install
install:
	install -d $(DESTDIR)$(LIBDIR)/systemd/system
	install -m 644 usr/lib/systemd/system/rockchip-chromium-x11-init.service $(DESTDIR)$(LIBDIR)/systemd/system

	install -d $(DESTDIR)$(BINDIR)
	install -m 755 usr/bin/rockchip-chromium-x11-init.sh $(DESTDIR)$(BINDIR)/rockchip-chromium-x11-init.sh

#
# Clean
#
.PHONY: distclean
distclean: clean

.PHONY: clean
clean: clean-deb

.PHONY: clean-deb
clean-deb:
	rm -rf debian/.debhelper debian/${PROJECT} debian/debhelper-build-stamp debian/files debian/*.debhelper.log debian/*.postrm.debhelper debian/*.substvars

#
# Release
#
.PHONY: dch
dch: debian/changelog
	gbp dch --debian-branch=main

.PHONY: deb
deb: debian
	debuild --no-sign
