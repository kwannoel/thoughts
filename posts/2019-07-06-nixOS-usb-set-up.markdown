---
title: NixOS - Setup a bootable USB
---

1. FAT32 USB drive
  - If the USB drive is corrupt you can use GParted GUI on ubuntu to fix it up
2. Download NixOS graphical iso
3. Use command to write to disc
> dd if=path-to-image of=/dev/sdX
