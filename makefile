install: lysfetch.lua
	@cp lysfetch.lua /usr/bin/lysfetch
	@chmod +x /usr/bin/lysfetch

clean: /usr/bin/lysfetch
	@echo Cleaning...
	@sudo rm /usr/bin/lysfetch
	@echo Cleaned succesfully

all:
	@echo install - Copies lysfetch.lua in /usr/bin
	@echo clean - Removes lysfetch from /usr/bin
