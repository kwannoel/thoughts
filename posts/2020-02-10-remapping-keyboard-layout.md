---
title: Remapping keyboard layout
---

Recently had to implement a workaround for my mechanical keyboard since there
was a dead key.

After looking through the nixos wiki, I sort of figured out how to remap my
windows and alt keys using xkboptions.

In nixos, the location of xkeyboardconfig (which contains relevant configurable
options) is in /nix/store.

Hence run the following to find the root location:

> ls /nix/store | grep keyboard

After doing so, navigate to the file containing xkboptions:

> cd /nix/store/<xkeyboard_directory_name>/share/X11/xkb

Then open the base.lst files which provides a description of what one can
configure.

The contents are provided here for convenience, under the heading `! option`
(found this through random googling, you can locate this same file by following
the steps above):
https://github.com/Webconverger/webc/blob/master/usr/share/X11/xkb/rules/base.lst
