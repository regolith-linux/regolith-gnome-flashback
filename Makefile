#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)

#
# Targets
#

all:
	@echo "Nothing to do"

install:
# Based on https://github.com/deuill/i3-gnome-flashback
	$(INSTALL) -m0644 -D regolith-gnome-flashback.session $(PREFIX)/usr/share/gnome-session/sessions/regolith-gnome-flashback.session
	$(INSTALL) -m0755 -D regolith-gnome-flashback-session $(PREFIX)/usr/bin/regolith-gnome-flashback-session
	$(INSTALL) -m0755 -D regolith-gnome-flashback $(PREFIX)/usr/bin/regolith-gnome-flashback
	$(INSTALL) -m0644 -D regolith-gnome-flashback.desktop $(PREFIX)/usr/share/applications/regolith-gnome-flashback.desktop
	$(INSTALL) -m0644 -D regolith.desktop $(PREFIX)/usr/share/xsessions/regolith.desktop
	
uninstall:
	rm -f $(PREFIX)/usr/bin/regolith-gnome-flashback $(PREFIX)/usr/bin/regolith-gnome-flashback-session \
          $(PREFIX)/usr/share/gnome-session/sessions/regolith-gnome-flashback.session \
	  $(PREFIX)/usr/share/applications/regolith-gnome-flashback.desktop

.PHONY: all install uninstall
