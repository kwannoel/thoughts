---
title: NixOS - Installation on gtx1050 drivers
---

*Lets get this bread*

--

My computer faced two issues:
1) Graphic card driver incompatibilities.
2) Unable to boot from nixOS liveCD.

I referenced the following to resolve these:
gtx1050 - https://github.com/NixOS/nixpkgs/issues/44284
Installation via another distro - https://nixos.org/nixos/manual/index.html#sec-installing-from-other-distro 

Regarding 2) I used an ubuntu LiveCD, used `nixos` rather than `nix` when adding nix-channels 