

.PHONY: all clean

all: digraphs@boldewyn.de.xpi

digraphs@boldewyn.de.xpi:
	cd digraphs@boldewyn.de; \
	zip -r ../digraphs@boldewyn.de.xpi *

clean:
	rm digraphs@boldewyn.de.xpi

install:
	@echo "# Done nothing"
	@INSTALL_PATH=~/.mozilla/firefox/$$(cat ~/.mozilla/firefox/profiles.ini | sed -e '/^Path/!d' -e 's/Path=//' | head -n 1); \
	echo 'cp -fr digraphs@boldewyn.de '"$$INSTALL_PATH"'/extensions/'
