# Overview #

This is a very simple package providing a keymap for Linux operating systems based on the standard us keymap. The only difference is that the Left Control and CapsLock keys are switched.

# Installation #

Installation can be done with `make`.

```shell
# make install
```

Note, it would be _much_ better to create a distribution package for this project rather than using `make` directly.

# Usage #

To enable the new keymap on systems with `systemd` you can use `localctl`.

```shell
$ sudo systemctl daemon-reload # Or reboot
$ sudo localctl set-keymap ctrl-capslock-swap-us
```
