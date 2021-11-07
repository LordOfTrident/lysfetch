install: ${BINARY}
	@cp lysfetch.lua /usr/bin/lysfetch
	@chmod +x /usr/bin/lysfetch

clean:
	@echo Cleaning...
	@sudo rm /usr/bin/lysfetch
	@echo Cleaned succesfully

all:
	@echo install - Copies lysfetch.lua in /usr/bin
	@echo clean - Removes lysfetch from /usr/bin
