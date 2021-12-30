install: src/lysfetch.lua
	cp src/lysfetch.lua /usr/bin/lysfetch
	chmod +x /usr/bin/lysfetch

uninstall: /usr/bin/lysfetch
	rm /usr/bin/lysfetch

all:
	@echo install
	@echo uninstall
