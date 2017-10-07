.PHONY: install uninstall clean

TARGET_SUFFIX := /usr/share/kbd/keymaps/i386/qwerty
KEYMAP_NAME := ctrl-capslock-swap-us.map.gz

all: ctrl-capslock-swap-us.map.gz

clean:
	rm ctrl-capslock-swap-us.map.gz

install: ctrl-capslock-swap-us.map.gz
	install -D -t ${DESTDIR}${TARGET_SUFFIX} ${KEYMAP_NAME}

uninstall:
	rm ${DESTDIR}${TARGET_SUFFIX}/${KEYMAP_NAME}

ctrl-capslock-swap-us.map.gz:
	gzip -k ctrl-capslock-swap-us.map
