---
title: Remapping keyboard layout part 2
---

I found myself using my pinky to press ctrl too often and still wanted to
configure more than what was provided on `xkboptions`.

After doing some digging on Arch Wiki, I found a relevant source

To access a lower level interface, one could use xkbcomp.

To get the current layout use setxkbmap -print -verbose 10

References:

https://wiki.archlinux.org/index.php/Xorg/Keyboard_configuration#Using_X_configuration_files
https://web.archive.org/web/20170825051821/http://madduck.net:80/docs/extending-xkb/
