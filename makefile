install: lysfetch.lua
	@echo Installing...
	@cp lysfetch.lua /usr/bin/lysfetch
	@chmod +x /usr/bin/lysfetch
	@echo Installed successfully

clean: /usr/bin/lysfetch
	@echo Cleaning...
	@sudo rm /usr/bin/lysfetch
	@echo Cleaned successfully

all:
	@echo install - Copies lysfetch.lua in /usr/bin
	@echo clean - Removes lysfetch from /usr/bin
