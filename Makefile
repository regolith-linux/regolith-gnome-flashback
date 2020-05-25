INSTALL := install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)

all:
	@echo "Nothing to do"

install:
	# Adapted from https://github.com/deuill/i3-gnome-flashback
	$(INSTALL) -m0644 -D i3-gnome-flashback.session $(PREFIX)/usr/share/gnome-session/sessions/i3-gnome-flashback.session
	$(INSTALL) -m0755 -D i3-gnome-flashback-session $(PREFIX)/usr/bin/i3-gnome-flashback-session
	$(INSTALL) -m0755 -D i3-gnome-flashback $(PREFIX)/usr/bin/i3-gnome-flashback
	$(INSTALL) -m0644 -D i3-gnome-flashback.desktop $(PREFIX)/usr/share/applications/i3-gnome-flashback.desktop
	$(INSTALL) -m0644 -D regolith.desktop $(PREFIX)/usr/share/xsessions/regolith.desktop

uninstall:
	rm -f $(PREFIX)/usr/share/xsessions/regolith.desktop \
		$(PREFIX)/usr/bin/i3-gnome-flashback \
		$(PREFIX)/usr/bin/i3-gnome-flashback-session \
		$(PREFIX)/usr/share/gnome-session/sessions/i3-gnome-flashback.session \
		$(PREFIX)/usr/share/applications/i3-gnome-flashback.desktop

.PHONY: all install uninstall
