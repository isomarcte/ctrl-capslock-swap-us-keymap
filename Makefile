TARGET_SUFFIX := /usr/share/kbd/keymaps/i386/qwerty
KEYMAP_NAME := ctrl-capslock-swap-us.map.gz

.PHONY: install uninstall
install:
	install -D -t ${DESTDIR}${TARGET_SUFFIX} ${KEYMAP_NAME}

uninstall:
	rm ${DESTDIR}${TARGET_SUFFIX}/${KEYMAP_NAME}
